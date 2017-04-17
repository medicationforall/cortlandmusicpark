<?php
/**
 *   Medication For All Framework Cortland Music Park source file HofMember,
 *   Copyright (C) 2013  James M Adams
 *
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU Lesser General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Lesser General Public License for more details.
 *
 *   You should have received a copy of the GNU Lesser General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 *@package cmp
 */

/**
 *
 *@author James M Adams <james@medicationforall.com>
 *@version 0.1
 *@package cmp
 */
class HofMember extends Component{
//data

private $memberId;

private $first;

private $last;

private $deceased;

protected $loaded = false;

private $modified = false;
private $selected = false;

//consturctor

/**
 *
 */
	function __construct( $head='', $type='hofMember'){
		parent::__construct($head,$type);
	}

//methods

/**
 *
 */
	function process(){

		//print '<br />process '.$this->getUnique();
		//reset temp message
		$this->message = '';

		if($this->loaded == false){
			//poll for member awards
			$this->loadAwards();
		}

		if($this->getParent('page')->getAccount()->isEdit() || $this->isEdit()){

			//add award check
 			if(!empty($_REQUEST[$this->getUnique().'_addAward'])){
				$this->addAward();
			}

			if(!empty($_REQUEST['deleteAward'])){
				$this->deleteAward();
			}

			//form submission check
 			if(!empty($_REQUEST[$this->getUnique().'_submit'])){
				$this->submitForm();
			}
			
		}

		$this->children('process');
	}

/**
 *
 */
	function loadAwards(){
		if($this->memberId !== null){
			$mysqli = $this->getParent('page')->getConnect()->getMysqli();

			$query = 'SELECT `id`,`award`, `year` FROM `awards` where  `memberid` =? AND status=\'active\' order by `year` ';

			if($stmnt = $mysqli->prepare($query)){
				$stmnt->bind_param('i',$this->memberId);

				$stmnt->execute();
				$stmnt->bind_result($awardId,$awardTitle,$year);

				while($stmnt->fetch()){
					//print '<br />'.$this->memberId.' '.$this->first.' '.$this->last.' '.$awardTitle.' '.$year;
					$award = new HofAward();
					$award->setAwardId($awardId);
					$award->setAwardTitle($awardTitle);
					$award->setYear($year);
					$award->setUnique($this->getUnique().'_award_'.count($this->getChildren()));

					$this->add($award);
				}
				$this->loaded = true;
			}
		}
	}

/**
 *@return HofAward if successful.
 */
	function addAward(){

		$key = $this->getUnique().'_addAward';
		
		if(!empty($_REQUEST[$key]) && strcmp($_REQUEST[$key],'true')==0){
			//print 'attempting to add award';
			$award = new HofAward();
			$award->setEdit('true');
			$award->setUnique($this->getUnique().'_award_'.count($this->getChildren()));
			$this->add($award);

			return $award;
		}

		return null;
	}

/**
 *
 */
	function deleteAward(){

		if(!empty($_REQUEST['deleteAward']) && $this->findChild($_REQUEST['deleteAward'])){
			//print('found child to delete');
			$this->deleteChild($_REQUEST['deleteAward']);
		}
	}

/**
 *
 */
	function submitForm(){
		
		$unique =$this->getUnique(); 
		$submitK = $unique.'_submit';
		$firstK = $unique.'_first';
		$lastK = $unique.'_last';
		$deceasedK = $unique.'_deceased';

		if(!empty($_REQUEST[$submitK]) && strcmp($_REQUEST[$submitK],'true')==0){
			//print 'ready to parse form!';

			if(empty($_REQUEST[$firstK])){
				$this->message = '<div class="error">First Name Can\'t be empty</div>';
				return false;
			}else{
				$this->first = $this->parse($_REQUEST[$firstK]);
			}

			if(empty($_REQUEST[$lastK])){
				$this->message = '<div class="error">Last Name Can\'t be empty</div>';
				return false;
			}else{
				$this->last = $this->parse($_REQUEST[$lastK]);
			}

			if(!empty($_REQUEST[$deceasedK]) && strcmp($_REQUEST[$deceasedK],'on')==0){
				$this->deceased = true;
			} else{
				$this->deceased = false;
			}


			if(empty($this->message)){

				if($this->saveMember()){
					$this->setModified(true);
					$this->message = '<div class="confirm">Changes Saved!</div>';
					//print 'getting the message ';
				}
			}

			//done in this order so the member id gets set prior child elements being processed. 
			$children = $this->getChildren();
			if(count($this->getChildren()) >0){

				foreach($children as $child){

					$awardStatus = $child->submitForm();
	
					if($awardStatus=== true){
						$this->setModified(true);
					} else if($awardStatus=== false){
						$this->message = 'fail';
						return false;		
					}

				}	
			}

			return true;
		}
	}

/**
 *
 */
	function saveMember(){

		if($this->memberId == null){
			return $this->insertMember();
		}else{
			return $this->updateMember();
		}
	}

/**
 *
 */
	function insertMember(){
		$mysqli = $this->getParent('page')->getConnect()->getMysqli();

		$query = "INSERT INTO `halloffame` (`firstname`,`lastname` ,`deceased`) VALUES (?,?,?)";

		if($stmnt=$mysqli->prepare($query)){

			$d = 0;

			if($this->deceased){
				$d = 1;
			}
			$stmnt->bind_param('ssi',$this->first,$this->last,$d);
			$stmnt->execute();
			//print 'insert '.$stmnt->insert_id;

			$this->memberId = $stmnt->insert_id;
			$this->setUnique(str_replace('new',$this->memberId,$this->getUnique()));
			$this->loaded = true;
			$this->getparent('componentHallTable')->prepend($this);
			return true;

		}
	}

/**
 *
 */
	function updateMember(){
		
		$mysqli = $this->getParent('page')->getConnect()->getMysqli();

		$query = "UPDATE `halloffame` SET `lastname`=?,`firstname`=?,`deceased`=? WHERE id=?";

		if($stmnt=$mysqli->prepare($query)){

			$d = 0;
			if($this->deceased){
				$d = 1;
			}

			$stmnt->bind_param('ssii',$this->last,$this->first,$d,$this->memberId);
			$stmnt->execute();

			//print('Affected Row '.$stmnt->affected_rows.' '.$stmnt->error.' ');		

			if($stmnt->affected_rows > 0){
				return true;
			} else{
				return false;
			}
		}
	}

/**
 * called when this node is having a delete method from core called against it.
 * @see Core
 */
	function delete(){

		$memberId = $this->getMemberId();

		if($memberId){
			//print 'attempting to delete database member.';

			$mysqli = $this->getParent('page')->getConnect()->getMysqli();
			$query = "UPDATE `halloffame` SET status='delete' WHERE id=?";

			if($stmnt=$mysqli->prepare($query)){

				$stmnt->bind_param('i',$memberId);
				$stmnt->execute();

				//print('Affected Row '.$stmnt->affected_rows.' '.$stmnt->error.' ');		

				if($stmnt->affected_rows > 0){
					return true;
				} else{
					return false;
				}
			}
		}
	}


/**
 *
 */
	function cContent(){
		echo '<div class="cContent">';
		print 'member form test';

		$this->children('show');
		echo '</div>';
	}

/**
 *
 */
	function edit()
	{
		$this->cHeader();
		$this->eContent();
		$this->cFooter();
	}

/**
 *@todo may have to set getfile to index.php if it's empty.
 */
	function eContent(){
		$unique = $this->getUnique();
		echo '<div class="cContent">';

		echo '<form method="POST" action="'.$this->getParent('page')->getFile().'">';
		echo $this->message;

		echo '<div>';
		echo 'First Name<input type="text" name="'.$unique.'_first" maxlength="100" value="'.htmlspecialchars($this->first).'" />';
		echo '</div>';

		echo '<div>';
		echo 'Last name<input type="text" name="'.$unique.'_last" maxlength="100" value="'.htmlspecialchars($this->last).'" />';
		echo '</div>';

		echo '<div>';
		$deceasedStr = "";
		if($this->deceased){
			$deceasedStr = 'checked="checked"';
		}
		echo 'Deceased<input type="checkbox" name="'.$unique.'_deceased" '.$deceasedStr.' />';
		echo '</div>';

		

		$this->children('show');
		echo '<div><a href="?'.$this->getUnique().'_addAward=true" class="addAward">Add Award</a></div>';

		echo '<input type="hidden" name="origin" value="'.$this->getUnique().'" />';

		echo '<input type="hidden" name="'.$unique.'_submit" value="true" />';

		echo '<input class="submitMember" type="submit" />';
		echo '</form>';

		echo '</div>';
	}


/**
 *
 */
	function getMemberId(){
		return $this->memberId;
	}

/**
 *
 */
	function setMemberId($id){
		$this->memberId = $id;
	}

/**
 *
 */
	function getFirstName(){
		return $this->first;
	}

/**
 *
 */
	function setFirstName($first){
		$this->first= $first;
	}

/**
 *
 */
	function getLastName(){
		return $this->last;
	}

/**
 *
 */
	function setLastName($last){
		$this->last = $last;
	}

/**
 *
 */
	function getDeceased(){
		return $this->deceased;
	}

/**
 *
 */
	function setDeceased($deceased){
		$this->deceased =$deceased;
	}

/**
 *
 */
	function getModified(){
		return $this->modified;
	}


/**
 *
 */
	function setModified($modified){
		$children = $this->getparent('componentHallTable')->findChildByName('componentHofMember');

		foreach($children as $child){
			$child->clearModified();
		}

		$this->modified = $modified;

	}

/**
 *
 */
	function clearModified(){
		$this->modified = false;
	}

/**
 *
 *@todo makes the assumption that the children have to be awards.
 */
	function printRow(){

		$out = '';			

		$modified = '';
		if($this->getModified()){
			$modified = 'class="modified"';
		}

		$out .= '<tr '.$modified.'>';

		//edit link
		if($this->getParent('page')->getAccount()->isEdit()){
			$out .= '<td>';
			if($this->getParent('page')->getAccount()->access('edit')){
				$out .= '<a class="editMember" href="?editMember='.$this->getUnique().'" title="Edit '.$this->getFirstName().' '.$this->getLastName().'">&nbsp;</a>';
			}

			if($this->getParent('page')->getAccount()->access('admin')){
				$out .= '<a class="deleteMember" href="?deleteMember='.$this->getUnique().'" title="Delete '.$this->getFirstName().' '.$this->getLastName().'">&nbsp;</a>';
			}
			$out .= '</td>';
		}

		$out .= '<td>';
		$out .= $this->getFirstName().'</td>';
		$out .= '<td>'.$this->getlastName().'</td>';

		$children = $this->getChildren();
		$hoh ='';
		$hof ='';

		foreach($children as $child){
			if(strcmp($child->getAwardTitle(),'Hall of Honor')==0 || strcmp($child->getAwardTitle(),'Horizon Award')==0){
				$hoh = $child->getYear().' - '.$child->getAwardTitle();
			}else if(strcmp($child->getAwardTitle(),'Hall of Fame')==0 || strcmp($child->getAwardTitle(),'Lifetime Achievement Award')==0){
				$hof = $child->getYear().' - '.$child->getAwardTitle();
			}
		}
		$out .= '<td>'.$hoh.'</td>';
		$out .= '<td>'.$hof.'</td>';

		if($this->getDeceased()==1){
			$out .= '<td class="hcenter">'.'X'.'</td>';
		}else{
			$out .= '<td>'.'</td>';
		}
		$out .= '</tr>';
		return $out;
	}

/**
 *
 */
	function short(){
		$consumed = false;

		//reset temp message
		$this->message = '';

		//print 'member short method';

		//add award check
 		if(!empty($_REQUEST[$this->getUnique().'_addAward'])){
			$award = $this->addAward();

			if($award){
				$award->process();
				$award->show();
				$consumed = true;
			}
		}

		//delete award
		if(!empty($_REQUEST['deleteAward'])){
			$this->deleteAward();
			$consumed = true;
		}

		//form submission check
 		if(!empty($_REQUEST[$this->getUnique().'_submit'])){
			$result = $this->submitForm();

			$out = array();
			//$out['message'] = $this->message;
			$out['success'] = $result;

			//http://stackoverflow.com/questions/778336/capturing-echo-into-a-variable
			$this->children('process');
			ob_start();
			$this->show();
			$out['dialog'] = ob_get_clean();

			if($result){
				$out['node'] = $this->printRow(); 
			}

			

			//$out['unique']= $this->getUnique();

			echo json_encode($out);
			$consumed = true;
		}

		if($consumed == false){
		$this->children('short');
		}
	}
}
?>
