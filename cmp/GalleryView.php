<?php

class GalleryView extends Component{

//data
private $tag;

private $gallery;

//consturctor

	function __construct( $head='', $type='galleryView'){
		parent::__construct($head,$type);
	}


//methods

	function process(){

		if(!empty($this->tag)){
			$_REQUEST['tag'] = $this->tag;
			//print 'processing for '.$this->tag;
			$this->getParent('page')->script('band.js','cmp/script');
			$this->gallery = $this->getParent('page')->getApp('gallery2');

			$this->gallery->process();			
		}

	}

	function cContent(){
		echo '<div class="cContent">';

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
	}

	function setTag($tag){
		$this->tag = $tag;
	}

}
?>
