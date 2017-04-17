<?php

class BandList extends Component{
//data
private $loaded = false;

private $refPage = '';

private $selectedBand = null;

//constructor

	function __construct( $head='', $type='bandList'){
		parent::__construct($head,$type);
	}


//methods
	function process(){

		if($this->loaded==false){
			//print 'not loaded';

			$this->loadBands();

			$this->loaded = true;
		}

		if(!empty($_REQUEST['viewband'])){
			$this->selectedBand = $this->findChild(urlDecode($_REQUEST['viewband']));
		}else{
			$this->selectedBand = null;

		}

		$this->children('process');
	}

/**
 *
 */
	function loadBands(){
		$mysqli = $this->getParent('page')->getConnect()->getMysqli();

		$query = 'SELECT id,name,tag FROM band order by name';

		if($stmnt = $mysqli->prepare($query)){

			$stmnt->execute();
			$stmnt->bind_result($id,$name,$tag);

			while($stmnt->fetch()){
				//print $id.' '.$name;
				$band = new Band($name);
				$band->setBandId($id);
				$band->setBandName($name);
				$band->setTag($tag);
				$band->setUnique(str_replace(' ','',ucwords($name)));
				//print '<br />'.$band->getUnique();
				$this->add($band);
			}
		}
	}

	function cContent(){
		//print 'band list '.count($this->getChildren());

		echo '<div class="cContent">';

		if(empty($this->selectedBand)){
			//print 'print band list';
			$this->printBandList();
		}else{
			$this->selectedBand->show();
		}

		echo '</div>';
	}

	function printBandList(){
		echo '<div class="bandListLinks">';
		$this->each(function($t){
			//print('each'.$t->getType());
			if(strcmp($t->getType(),'band')==0){
				if($t->isActive()){
					print $t->getBandLink();
				}
			}
		});
		echo '</div>';
	}

	function getLoaded(){
		return $this->loaded;
	}

/**
 *
 */
	function setRefPage($ref){
		//print 'setting ref page '.$ref;
		$this->refPage=$ref;

		//print 'ref page is now'.$this->refPage;
	}

	function getRefPage(){
		return $this->refPage;
	}

	function siteMap(){
		echo '<!--sitemap for bandList'.'-->'."\n";
		//print 'band list count '.count($this->getChildren())."\n";

		$this->children('siteMap');
	}

}

?>
