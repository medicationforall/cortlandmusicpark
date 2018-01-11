<?php

/**
 *@author  James M Adams <james@medicationforall.com>
 *@version 0.1
 *
 *@package cmp
 */

class CmpEvent extends Event{

private $linkImage = '';
private $linkTitle = '';
private $linkDescription = '';

//array or prices associated with an event.
private $price = array();


/**
 *
 */
	function process(){

		if($this->getLoaded()==false){
			//print 'setup band connections';
			$this->findBands();
			$this->findPrice();
		}
		parent::process();
	}


/**
 *
 */
	function findBands(){
		//figure out if bandList is loaded.
		//print 'attempt to find bands';

		$bandList = $this->getParent('page')->getApp('bandList');

		if(!empty($bandList)){
			//print('found bandList');

			if($bandList->getLoaded() == false){
				$bandList->process();
			}

			$bands = $bandList->findChildByName('componentBand');

			//print('bandCount '.count($bands));
			//print '<br />'.$bands->getChild(0)->getName();

			$this->parseBands($bands);			
		}
	}

/**
 *
 */
	function findPrice(){
		
		$description = $this->getDescription();
		preg_match_all('/\$(\d+.\d+)/m',$description,$matches);
		//print'calling find price ';
		//print_r($matches);
		if(!empty($matches) && !empty($matches[1])){
			
			$this->price = $matches[1];
		}
	}


/**
 *
 */
	function parseBands($bands){

		$title = $this->getTitle();
		$description = $this->getDescription();


		foreach($bands as $band){
			//print '<br />searching '.$title.' for '.$band->getBandName().' '.strpos($title,$band->getBandName());
			if(stripos($title,$band->getBandName()) !== false){
				//print 'found band in title';
				$title = str_ireplace($band->getBandName(),$band->getBandLink(),$title);
				$this->setBandImage($band);
			}

			if(stripos($description,$band->getBandName()) !== false){
				//print '<br />found band in description '.$band->getBandName().' '.$this->getUnique().' '.stripos($description,$band->getBandName());
				$description = str_ireplace($band->getBandName(),$band->getBandLink(),$description);
				$this->setBandImage($band);
			}
		}

		$this->linkTitle =$title;
		$this->linkDescription = $description;

	}


/**
 *
 */
	function setBandImage($band){
		$this->linkImage = $band->getBandImage();
	}


/**
 *
 */
	function cDiv()
	{
		$id=$this->getUnique();
		$class = $this->getClass();
		$coord = '';
		$itemType = 'http://schema.org/Event';

		if($this->findClass('dialog')){
			$coord =  $this->getParent('page')->getSettings()->getCoord();
		}

		if(!empty($id)){
			$id=' id="'.$id.'"';
		}
		else{
			$id='';
		}

		if(!empty($class)){
			$class = ' '.$class;
		}

		if(strpos($class, 'dialog') && !empty($coord)){
			$coord = ' '.$coord;
		}

		if(strCmp($this->getEventType(),'show')==0 || strCmp($this->getEventType(),'feature')==0){
			$itemType='http://schema.org/MusicEvent';
		}

		if(strCmp($this->getEventType(),'closed')==0){
			echo('<div'.$id.' class="component'.$class.'"'.$coord.'>'."\n");
		}else{
			echo('<div'.$id.' class="component'.$class.'"'.$coord.' itemscope="" itemtype="'.$itemType.'">'."\n");
		}
	}


/**
 *
 */
	function cHeader(){
		echo '<div class="cHeader">';
			//content="2014-05-23T20:00"
			echo '<div class="date" itemprop="startDate" content="'.date("Y-m-d",strtotime($this->getDate())).'">';
				if($this->isToday()){
					echo 'Today - ';
				}
				echo date("l, F jS",strtotime($this->getDate()));
			echo '</div>';
		echo '</div>';
	}


/**
 *
 */
	function cContent(){

		if(strCmp($this->getEventType(),'closed')!=0){
			$this->metaLocation();

			if(!empty($this->price)){
				$count = count($this->price);

				for($i=0;$i<$count;$i++){
					$this->metaPrice($this->price[$i]);
				}

			}
		}

		echo '<div class="cContent">';
		echo '<div class="image">';
		echo $this->linkImage;
		echo '</div>';
		echo '<div class="title" itemprop="name">';
		echo $this->linkTitle;
		echo '</div>';
		echo '<div class="description" itemprop="description">';
		echo $this->linkDescription;
		echo '</div>';
		$this->printCancelled();
		$this->printSoldOut();
		$this->printLimitedTickets();
		echo '</div>';
	}


/**
 *
 */
	function metaLocation(){
		echo '<div itemprop="location" itemscope="" itemtype="http://schema.org/MusicVenue">';
			echo '<meta itemprop="name" content="Cortland Country Music Park"/>';
			echo '<meta itemprop="address" content="1824 New York 13, Cortland, NY 13045, USA"/>';
		echo '</div>';
	}


/**
 *
 */
	function metaPrice($price){
		echo '<div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">';
			//todo gather price
    		echo '<meta itemprop="price" content="'.$price.'"/>';
    		echo '<meta itemprop="priceCurrency" content="USD" />';
    		echo '<meta itemprop="availability" href="http://schema.org/InStock"/>';
			echo '<meta itemprop="url" content="'.$this->geCalendarRefPage().'?eventDetails='.$this->getUnique().'" />';
  		echo '</div>';
	}

}

?>
