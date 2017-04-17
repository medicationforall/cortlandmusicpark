<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$page->setTitle('Band List - Cortland Music Park');


$center = $page->findChild('center');

//$bandList = new BandList();

$bandList = $page->getApp('bandList');

$clear = new Panel('clear');
$clear->setUnique('clear');

$center->add($bandList);
$center->add($clear);



$page->process();
$page->show();

//$page->awesomeDebug();



?>
