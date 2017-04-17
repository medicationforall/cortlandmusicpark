<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$page->setStyle('
#center{
padding:0px;
}
');

$page->setTitle('Map - Cortland Music Park');


$center = $page->findChild('center');

$map = new CmpMap();


//$center->add($welcome);

$center->add($map);

$page->process();
$page->show();

//$page->awesomeDebug();

?>
