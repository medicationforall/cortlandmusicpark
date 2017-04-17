<?php

class BandWebsite extends Component{

//data

private $websiteId = null;

private $address ="";

private $websiteType = "";

//constructor
	function __construct( $head='', $type='bandWebsite'){
		parent::__construct($head,$type);
	}

//methods

	function printLlink(){
		echo '<a href="'.$this->address.'" target="_blank">'.ucFirst($this->websiteType).'</a>';
	}

	function setWebsiteId($id){
		$this->websiteid = $id;
	}

	function setAddress($add){
		$this->address = $add;
	}

	function setWebsiteType($type){
		$this->websiteType = $type;
	}
}
?>
