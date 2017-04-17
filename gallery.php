<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$page->setTitle('Photos - Cortland Music Park');

$page->setStyle('
#center
{
text-align:center;
padding:0px;
}
.gallery2
{
display:inline-block;
}
');

//manage subnav for calendar
$subNav= new Panel('subNav');
$subNav->setUnique('subNav');

$bar = $page->findChild('bar');

if(!empty($bar)){
$bar->add($subNav);
}

$tagFilter = new TagFilter();
$subNav->add($tagFilter);
//end manage subnav


$center = $page->findChild('center');

$gallery = $page->getApp('gallery2');

$center->add($gallery);

//$center->add($welcome);

$page->process();

/*if($gallery->getLoad())
{
print 'gallery says it\'s loaded';
}
else
{
print 'gallery say\'s it\'s not loaded';
}*/


$page->show();

//$gallery->awesomeDebug();

?>
