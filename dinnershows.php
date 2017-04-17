<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$calendar = $_SESSION['site']->getApp('dinnershowCalendar');

if($calendar == null){
	$calendar = new Calendar('Upcoming Dinner Shows','upcoming','list');
	$calendar->setEventClass('CmpEvent');
	$calendar->setCustomWhere("AND `type`='feature'");
	$calendar->setRefPage('calendar.php');
	$_SESSION['site']->addApp('dinnershowCalendar',$calendar);
}

$page->setTitle('Dinner Shows - Cortland Music Park');


$center = $page->findChild('center');

$rightPanel = new Panel('right');
$rightPanel->setUnique('right');

$leftPanel = new Panel('left');
$leftPanel->setUnique('left');

$text = new Text("Dinner Shows",'


<p>Cortland’s Country Music Park presents Tribute Dinner Shows performed by our talented local bands. The shows consist of 1 hour of dancing before the dinner, a sit down dinner, and a 2½ hour show with a 20 minute break. When you arrive you will be greeted and seated at your table which will have crackers, cheese and pepperoni on it to give you a little snack before dinner.
</p>
<p>If you should so wish, come early and go through our Hall of Fame full of memorabilia from New York State performers as well as Nashville performers such as, Kenny Rogers, Tammy Wynette, Loretta Lynn, Conway Twitty, Mel Tillis and many, many more.
</p>
<p>We’ve had people compare us to Branson and Nashville. Come and see for yourself. Get your reservations early as we often sell out.
</p>
<p>If you want to bring a bus full call Donna Minnoe at 315-224-9085.
</p>
<p>For individual tickets call 607-753-0377. If no one is there, leave a message and someone will get back to you.
</p>

');

$text->setUnique('dinnerShowText');

$center->add($leftPanel);
$leftPanel->add($text);
$center->add($rightPanel);
$rightPanel->add($calendar);



$page->process();
$page->show();

//$page->awesomeDebug();

?>
