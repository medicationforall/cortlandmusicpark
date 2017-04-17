<?php
/**
 *   Medication For All Framework Cortland Music Park source file HofAward,
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
class HofAward extends Component{
//data

private $awardId;

private $awardTitle;

private static $awardOptions = array();

private $year;

//constructor
/**
 *
 */
	function __construct( $head='', $type='hofAward'){
		parent::__construct($head,$type);
	}

//methods

/**
 *
 */
	function process(){
		//fill out payment options
		if(empty(self::$awardOptions))
		{
			$this->getAwardOptions();
		}
	}

/**
 *
 */
	function cContent(){
		print 'award test';
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
 *
 */
	function submitForm(){

		$this->message= '';

		$unique = $this->getUnique();
		$yearK = $unique.'_year';
		$titleK = $unique.'_title';
		//$parent = $this->getParent('hofMember')

		if(!empty($_REQUEST[$yearK]) || !empty($_REQUEST[$titleK])){

			//$this->message = '<div class="error">trying to submit award</div>';


			if(!empty($_REQUEST[$yearK])) {

				if(is_numeric($_REQUEST[$yearK]) && strlen($_REQUEST[$yearK]) == 4 ){
					$this->year = $_REQUEST[$yearK];
				}else{
					$this->message = '<div class="error">Year is not in correct format</div>';
					return false;
				}
			}else{
				$this->message = '<div class="error">Year can not be empty.</div>';
				return false;
			}

			if(!empty($_REQUEST[$titleK])) {
				$this->awardTitle = $_REQUEST[$titleK];
			}else{
				$this->message = '<div class="error">Award Title can not be empty.</div>';
				return false;
			}

			if(empty($this->message)){
				//print 'ready to save award';

				$this->saveAward();
			}

			return true;			

		}
		
	}

/**
 *
 */
	function saveAward(){

		if($this->awardId == null){
			return $this->insertAward();
		}else{
			return $this->updateAward();
		}
	}

/**
 * called when this node is having a delete method from core called against it.
 * @see Core
 */
	function delete(){
		$parent = $this->getparent('ComponentHofMember');
		$memberId = $parent->getMemberId();

		if($memberId){
			//print 'attempting to delete database award.';
			$mysqli = $this->getParent('page')->getConnect()->getMysqli();
			$query = "UPDATE `awards` SET status='delete' WHERE id=?";

			if($stmnt=$mysqli->prepare($query)){

				$stmnt->bind_param('i',$this->awardId);
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
	function insertAward(){

		//get parent member id.
		$parent = $this->getparent('ComponentHofMember');
		$memberId = $parent->getMemberId();
		//print 'insert award '.$memberId;

		if($memberId){
			$mysqli = $this->getParent('page')->getConnect()->getMysqli();
			$query = "INSERT INTO `awards` (`memberid`,`award` ,`year`) VALUES (?,?,?)";

			if($stmnt=$mysqli->prepare($query)){
				$stmnt->bind_param('iss',$memberId,$this->awardTitle,$this->year);
				$stmnt->execute();
				//print 'insert '.$stmnt->insert_id;

				$this->awardId = $stmnt->insert_id;
				$this->setUnique($parent->getUnique().'_award_'.$this->awardId);
				return true;
			}
		}
	}

/**
 *
 */
	function updateAward(){
		
		$mysqli = $this->getParent('page')->getConnect()->getMysqli();

		$query = "UPDATE `awards` SET `award`=?,`year`=? WHERE id=?";

		if($stmnt=$mysqli->prepare($query)){

			$stmnt->bind_param('ssi',$this->awardTitle,$this->year,$this->awardId);
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
 *
 */
	function eContent(){
		echo '<div class="cContent">';
		echo $this->message;
		//print 'award edit test '.$this->getUnique();
		echo '<a href="?deleteAward='.$this->getUnique().'" class="deleteAward" title="Delete Award">&nbsp;</a>';
		echo '<div>Year<input type="text" name="'.$this->getUnique().'_year" value="'.$this->year.'" /></div>';
		echo '<div>Award Title<div><select name="'.$this->getUnique().'_title">';

		foreach(self::$awardOptions as $option){
			$selected = '';
			if(strcmp($this->awardTitle,$option)==0){
				$selected='selected="selected"';
			}
			print '<br /><option value="'.$option.'" '.$selected.'>'.$option.'</option>';
		}

		echo '</select></div></div>';
		echo '</div>';
	}

/**
 *
 */
	function setAwardId($id){
		$this->awardId =  $id;
	}

/**
 *
 */
	function setAwardTitle($title){
		$this->awardTitle= $title;
	}

/**
 *
 */
	function getAwardTitle(){
		return $this->awardTitle;
	}

/**
 *
 */
	function setYear($year){
		$this->year = $year;
	}

/**
 *
 */
	function getYear(){
		return $this->year;
	}

/**
 * Retreives the payment method options available from the database metadata
 *http://akinas.com/pages/en/blog/mysql_enum/
 */
	function getAwardOptions()
	{
		//print 'getting payment options';
		$query = " SHOW COLUMNS FROM `awards` LIKE 'award' ";
		$mysqli = $this->getParent('Page')->getConnect()->getMysqli();

		if($stmnt = $mysqli->prepare($query))
		{
			//print 'payment option statement prepared.';
			$stmnt->execute();
			$stmnt->bind_result($field,$type,$null,$key,$default,$extra);

			while($stmnt->fetch())
			{
				//print '<br /> '.$type.' '.$default;
				//$this->payment = $default;

				//extract the values the values are enclosed in single quotes ,and separated by commas.
				$regex = "/'(.*?)'/";
				$out;
				preg_match_all( $regex , $type, $out);

				//print_r($out[1]);
				self::$awardOptions = $out[1];
			}
		}
	}

/**
 *
 */
	function short(){
		//print 'short for '.$this->getUnique();
	}

}
?>
