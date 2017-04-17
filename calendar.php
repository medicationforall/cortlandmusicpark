<?php
include('global.php');
include('pagesetup.php');

//create the calendar outside of the cloned page.
$calendar = $_SESSION['site']->getApp('calendar');


/*if($calendar == null){
	$calendar = new CmpCalendar('','month','calendar');
	$calendar->setEventClass('CmpEvent');
	$_SESSION['site']->addApp('calendar',$calendar);
}*/

$page = clone $_SESSION['site'];

$page->setStyle('
#center{
padding:0px;
padding-top:25px;
padding-bottom:25px;
}
');

$page->setTitle('Calendar - Cortland Music Park');

//manage subnav for calendar
$subNav= new Panel('subNav');
$subNav->setUnique('subNav');

$bar = $page->findChild('bar');

if(!empty($bar)){
$bar->add($subNav);
}

$calendarNav = new CalendarNav('');
$subNav->add($calendarNav);
//end manage subnav


$center = $page->findChild('center');

$center->add($calendar);

//$center->add($welcome);

$page->process();
$page->show();

//$page->awesomeDebug();

?>
