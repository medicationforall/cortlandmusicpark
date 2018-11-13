<?php
/**
 *   Medication For All Framework Cortland Music Park source file HallTable,
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
 *@author James M Adams <james@medicationforall.com>
 *@version 0.1
 *@package cmp
 */
class HallTable extends Component{

//data


/**
 *Trigger for the process() method to load the object with data.
 *@var boolean
 */
private $loaded = false;

private $memberDialog = null;


//constructor

/**
 *Creates the HallTable instance.
 *@param string $head Header Text.
 *@param string $type component type.
 */
	function __construct( $head='', $type='hallTable'){
		parent::__construct($head,$type);
	}

/**
 *Responsible for loading the object with data. 
 */
	function process(){
		//http://tablesorter.com/
		$this->getParent('page')->script('jquery.tablesorter.min.js','cmp/script');
		$this->getParent('page')->script('diceTable.js','cmp/script');

		if($this->getParent('page')->getAccount()->isEdit() || $this->isEdit()){
			$this->getParent('page')->script('membershipDialog.js','cmp/script');
		}

		//turned off edit mode and member dialog is still a node. Clear it out.
		if($this->getParent('page')->getAccount()->isEdit() == false && $this->isEdit() == false && $this->memberDialog){
			$this->memberDialog = false;
		}

		//only process if we are processing a new member not editing an existing member
		//otherwise if we run process here it gets run again as part of the tables children.
		if($this->memberDialog && $this->memberDialog->getMemberId() == null){
			$this->memberDialog->process();
		}

		if($this->loaded == false){
			$this->loadMembers();
			$this->loaded=true;
		}

		//has edit access
		if($this->getParent('page')->getAccount()->access('edit')){

			//add member dialog
			if(!empty($_REQUEST['addMember']) && strcmp($_REQUEST['addMember'],'true')==0){
				$this->addMemberDialog();
			}

			if(!empty($_REQUEST['editMember'])){
				$this->editMemberDialog($_REQUEST['editMember']);
			}

			if(!empty($_REQUEST['deleteMember'])){
				$this->deleteMember($_REQUEST['deleteMember']);
			}
		}

		$this->children('process');
	}

/**
 *
 */
	function addMemberDialog(){
		
			//print('add member hit');
			$memberForm = new HofMember('Add Member');
			$memberForm->addClass('dialog');
			$memberForm->setEdit(true);
			$memberForm->setUnique('member_new');
			$memberForm->setParent($this);
		
			$this->memberDialog = $memberForm;
	}

/**
 *
 */
	function editMemberDialog($unique){
		
			//print('add member hit');
			//$memberForm = new HofMember('Edit Member');

			$memberForm = $this->findChild($unique);
			if($memberForm){
				$memberForm->setHead('Edit Member');
				$memberForm->addClass('dialog');
				$memberForm->setEdit(true);

				$children = $memberForm->getChildren();
				foreach($children as $child){
					$child->setEdit(true);
				}
		
				$this->memberDialog = $memberForm;
			}
	}

/**
 *@return Core Returns the object selected for deletion.
 */
	function deleteMember($unique){
		$memberForm = $this->findChild($unique);
		if($memberForm){

			//clear out the dialog
			$this->memberDialog = null;

			if(empty($_POST['hallTableDelConf'])){
				$memberForm->setDelete(true);
			} else if(strcmp($_POST['hallTableDelConf'],'true')==0){
				//print 'attempt to delete member';
				$this->deleteChild($unique);
			} else if(strcmp($_POST['hallTableDelConf'],'false')==0){
				//cancel response
				$memberForm->setDelete(false);
			}
		}

		return $memberForm;

	}


/**
 *Grabs the unique dice names from the database. Sorts by the dices average.
 */
	function loadMembers(){
		$mysqli = $this->getParent('page')->getConnect()->getMysqli();

		$query = 'SELECT id,firstname,lastname,deceased FROM `halloffame` where status=\'active\' order by lastname, firstname';

		if($stmnt = $mysqli->prepare($query)){

			$stmnt->execute();
			$stmnt->bind_result($id,$first,$last,$deceased);

			while($stmnt->fetch()){
				//print $id.' '.$first.' '.$last.' '.$deceased;
				$member = new HofMember();
				$member->setMemberId($id);
				$member->setFirstName($first);
				$member->setLastName($last);
				$member->setDeceased($deceased);
				$member->setUnique('member_'.$id);

				$this->add($member);
			}
		}
	}


/**
 *Component Content, outputs the SDIDice in a tabular format.
 */
	function cContent(){
		echo '<div class="cContent">';

		if($this->memberDialog){
			$this->memberDialog->show();
		}
		echo '<table>';
		echo '<thead>';
		echo '<tr><th class="headerSortDown">First Name</th><th class="headerSortDown">Last Name</th><th>Hall of Honor Year Inducted</th><th>Hall of Fame Year Inducted</th><th>Lifetime Achievement Year Inducted</th><th>Deceased</th></tr>';
		echo '</thead>';

		echo '<tbody>';

		$this->each(function($t){
			if(strcmp($t->getType(),'hofMember')==0){
				echo $t->printRow();
			}
		});
		echo '</tbody>';

		echo '</table>';
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
 *Component Content, outputs the SDIDice in a tabular format.
 */
	function eContent(){
		echo '<div class="cContent">';

		//member add / edit dialog.
		if($this->memberDialog){
			$this->memberDialog->show();
		}

		//print 'test halltable';
		if($this->getParent('page')->getAccount()->access('edit')){
			echo '<a href="?addMember=true" class="addMember">Add Member</a>';
		}
		echo '<table>';
		echo '<thead>';
		echo '<tr><th>Edit</th><th class="headerSortDown">First Name</th><th class="headerSortDown">Last Name</th><th>Hall of Honor Year Inducted</th><th>Hall of Fame Year Inducted</th><th>Lifetime Achievement Year Inducted</th><th>Deceased</th></tr>';
		echo '</thead>';

		echo '<tbody>';

		//@todo need to find fix for this
		//$isAdmin = $this->getParent('page')->getAccount()->access('admin');

		$this->each(function($t){
			if(strcmp($t->getName(),'componentHofMember')==0){
			//delete confirm dialog
			//if($isAdmin && $t->delete){
			//print('delete test');
			//print_r($t->delete);
			/*if($t->delete){
				$this->deleteConfirm($t->getFirstName().' '.$t->getLastName());
			}*/


			if(strcmp($t->getType(),'hofMember')==0){
				echo $t->printRow();
			}
			}
		});

		echo '</tbody>';

		echo '</table>';
		echo '</div>';
	}

/**
 *
 *not getting the page origin is a don't care moment!
 *if it's all running through ajax then it doesn't matter.
 */
	function  short(){

		$consumed = false;

		//has edit access
		if($this->getParent('page')->getAccount()->access('edit')){

			//add member dialog
			if(!empty($_REQUEST['addMember']) && strcmp($_REQUEST['addMember'],'true')==0){
				$this->addMemberDialog();

				if($this->memberDialog){
					$this->memberDialog->process();
					$this->memberDialog->show();
					$consumed=true;
				}
			}

			if(!empty($_REQUEST['editMember'])){
				$this->editMemberDialog($_REQUEST['editMember']);

				if($this->memberDialog){
					//done so the awards get a change to fill out.
					$this->memberDialog->process();
					$this->memberDialog->show();
					$consumed=true;
				}
			}

			if(!empty($_REQUEST['deleteMember'])){
				$member = $this->deleteMember($_REQUEST['deleteMember']);

				//delete confirm dialog
				if(!empty($member) && $this->getParent('page')->getAccount()->access('admin') && $member->delete && empty($_POST['hallTableDelConf'])){
					$this->deleteConfirm($member->getFirstName().' '.$member->getLastName());
					$consumed=true;
				}

				//delete action
				if(!empty($_POST['hallTableDelConf'])){
					//print 'found key';

					if(strcmp($_POST['hallTableDelConf'],'true')==0){
						echo '{"success":true}';
						$consumed ==true;

					} else if(strcmp($_POST['hallTableDelConf'],'false')==0){
						echo '{"success":true}';
						$consumed ==true;
					}

				}
			}
		}

		if($consumed == false && $this->memberDialog){
			$this->memberDialog->short();
		}
	}

}

?>
