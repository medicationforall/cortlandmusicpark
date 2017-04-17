<?php

class Band extends Component{
//data
private $bandId = null;
private $bandName = '';
private $loaded = false;
private $calendar = null;
private $active =true;

private $tag = "";

//constructor
	function __construct( $head='', $type='band'){
		parent::__construct($head,$type);

		$this->calendar = new Calendar('Upcoming Events','upcoming','list');
		$this->calendar->setEventClass('CmpEvent');
		$this->calendar->setRefPage('calendar.php');
		$this->calendar->setParent($this);
	}

//methods
	function process(){
		if($this->loaded == false){
			$this->loadWebsites();
			$this->calendar->setSearch($this->bandName);

			$this->calendar->setHead('Upcoming Events for '.$this->bandName);


			$this->loaded = true;
		}

		if(!empty($this->tag) && !empty($_REQUEST['viewband']) && strcmp($_REQUEST['viewband'],$this->getUnique())==0){
			$_REQUEST['tag'] = $this->tag;
			//print 'processing for '.$this->tag;
			$this->getParent('page')->script('band.js','cmp/script');
			$this->gallery = $this->getParent('page')->getApp('gallery2');

			$this->gallery->process();			
		}

		$this->children('process');
		$this->calendar->process();

		$events = $this->calendar->getChildren();

		if(count($events) >0){
			$this->active = true;
		}else{
			$this->active = false;
		}
	}


	function loadWebsites(){
		$mysqli = $this->getParent('page')->getConnect()->getMysqli();

		//print 'checking band websites';

		$query = 'SELECT id,address,type FROM bandwebsites where bandid = ? ';

		if($stmnt = $mysqli->prepare($query)){
			//print 'statement passed';

			$stmnt->bind_param('i',$this->bandId);

			$stmnt->execute();
			$stmnt->bind_result($id,$address,$type);

			while($stmnt->fetch()){
				//print $id.' '.$address.' '.$type;
				$bweb = new BandWebsite();
				$bweb->setWebsiteId($id);
				$bweb->setAddress($address);
				$bweb->setWebsiteType($type);
				$this->add($bweb);
			}
		}
	}

	function cContent(){
		echo '<div class="cContent">';

		echo '<div id="left">';
		echo '<div class="websites">';
		//echo 'websites';

		$this->each(function($t){
			//print('each'.$t->getType());
			if(strcmp($t->getType(),'bandWebsite')==0){
				echo '<div class="website">';
				$t->printLlink();
				echo '</div>';
			}
		});
		echo '</div>';


		if(!empty($this->tag)){
		print '<a href="gallery.php?tag='.urlEncode(trim($this->tag)).'">'.' Photos</a>';
		echo '<div class="photos">';
			$children = $this->gallery->getChildren();
			$count = count($children);

			for($i = 0; $i < $count && $i < 10;$i++){

				$children[$i]->showThumb();

			}
		echo '</div>';
		}

		echo '</div>';

		echo '<div id="right">';

		$this->calendar->show();

		echo '</div>';
		echo '</div>';
	}


	function setBandId($id){
		$this->bandId = $id;
	}


	function getBandId(){
		return $this->bandId;
	}


	function setBandName($name){
		$this->bandName = $name;
	}


	function getBandName(){
		return $this->bandName;
	}

	function isActive(){
		return $this->active;
	}

	function getBandLink(){
		$refPge = "";
		$parent = $this->getParent('componentBandList');

		$returner = '';

		if(!empty($parent)){
			$refPage=$parent->getRefPage();

		}

		if(!empty($_REQUEST['viewband']) && strcmp($_REQUEST['viewband'],$this->getUnique())==0){
			return $this->getBandName();
		}


		$returner .= '<div style="display:inline" itemprop="performer" itemscope="" itemtype="http://schema.org/MusicGroup">';
		$returner .= '<link itemprop="sameAs" href="'.$refPage.'?viewband='.urlEncode($this->getUnique()).'" />';
		$returner .= '<a class="bandPageLink" '.'href="'.$refPage.'?viewband='.urlEncode($this->getUnique()).'">'.'<span itemprop="name">'.$this->getBandName().'</span>'.'</a>';
		$returner .= '</div>';

		return $returner;

	}

	function setTag($tag){
		$this->tag = $tag;
	}

	function siteMap(){
		$refPge = "";
		$parent = $this->getParent('componentBandList');

		if(!empty($parent)){
			$refPage=$parent->getRefPage();

		}

		echo '<url>'."\n";
		echo ' <loc>'.$this->curPageURL().str_replace('sitemap.php','',$_SERVER["PHP_SELF"]).$refPage.'?viewband='.urlEncode($this->getUnique()).'</loc>'."\n";
		echo '</url>'."\n";
	}

}

?>
