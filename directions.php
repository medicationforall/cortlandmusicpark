<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$page->setTitle('Directions - Cortland Music Park');


//manage subnav for campground
$subNav= new Panel('subNav');
$subNav->setUnique('subNav');

$bar = $page->findChild('bar');

if(!empty($bar)){
$bar->add($subNav);
}

$map = new Menu('Map','map.php');
$subNav->add($map);
//end manage subnav


$center = $page->findChild('center');

$text = new Text('','We are located in beautiful Cortland New York, 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045.');
$text->setUnique('directionsText');


$map = new Code('<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2935.7356944091225!2d-76.15684733717501!3d42.62456115402001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89da6b3f8c8c24e3%3A0x6af878f33355e064!2sCortland+Country+Music+Park-Campground!5e0!3m2!1sen!2sus!4v1476618686579" width=100%; height="600" frameborder="0" style="max-width:800px;border:0" allowfullscreen></iframe>');

$center->add($text);
$center->add($map);

$page->process();
$page->show();

//$page->awesomeDebug();

?>
