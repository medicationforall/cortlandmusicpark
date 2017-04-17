<?php
include('global.php');
include('pagesetup.php');

//create the index calendar outside of the cloned page.
$calendar = $_SESSION['site']->getApp('indexCalendar');

//$featureCalendar = $_SESSION['site']->getApp('featureCalendar');


if($calendar == null){
	$calendar = new Calendar('','currentweek','list');
	$calendar->setEventClass('CmpEvent');
	$calendar->setRefPage('calendar.php');
	//$calendar->setCustomWhere("AND `type`<>'feature'");
	$_SESSION['site']->addApp('indexCalendar',$calendar);
}



$page = clone $_SESSION['site'];

$page->setStyle('
#right,#right2{
width:48%;
display:inline-block;
}

#left{
width:45%;
display:inline-block;
vertical-align:top;
margin-left:10px;
}

#homeupcomingShowText, #homeThisWeek
{
text-align:center;
}

#clear
{
clear:both;
}

.show
{
border:1px solid #c0c0c0;
padding-top:5px;
padding-bottom:5px;
box-shadow:3px 3px 3px rgba(0,0,0,0.5);
}
.welcome
{
font-size:15pt;
}

.calendar .list{
}

.calendar .list .event{
margin:0px;
margin-bottom:15px;
margin-right:10px;
}

.component.event{
min-width:0;
max-width:none;
width:98%;
}
.notice{
font-size:18pt;
}
');

$center = $page->findChild('center');

$rightPanel = new Panel('right');
$rightPanel->setUnique('right');

$leftPanel = new Panel('left');
$leftPanel->setUnique('left');


$text = new Text("",'
<p class="welcome first">Welcome to the Country Music Park and Campgrounds, and home of the 
<a href="halloffame.php">New York State Country Music Hall of Fame
</a>. 
<br />
<br />We are located in beautiful Cortland, New York; 1 mile east of Rt. 81 at 1824 State Route 13, Cortland, NY 13045. 
<br />
<br />Check out our 
<a href="calendar.php">Events Calendar
</a>for current events happening at the park. We have events happening almost every weekend.
</p>
<p class="welcome">Like us on 
<a href="https://www.facebook.com/cortlandcountrymusicpark" target="_blank">Facebook
</a>! 
<br />We are now proud partners of the 
<a href="http://www.fingerlakes.org" target="_blank">New Yorks Finger Lakes Tourism Alliance
</a>!
</p>
<p>
<b>Thank you to everyone who came to the Fundraising Jamboree and showed their support to the Park!
</b>
</p>
<p>
<br />
<div class="notice">Pricing Information:
</div>
<ul>
<li>Admission: $8.00
</li>
<li>Membership: $15.00
</li>
<li>Spaghetti Dinners: 
<br />Adults $9.00 
<br />Ages 6-12 & Seniors $8.00 
<br />Children under 5 free
</li>
<li>Regular Saturday Night and Sunday Afternoon dances 
<br />Adults $8.00 
<br />Children 9-16 $4.00 
<br />8 and under Free
</li>
</ul>
</p>
');
$text->setUnique('homeText');


$rightPanel->add($text);

$tab = new Tab();
$tab->add($calendar,'Upcoming Events');

$leftPanel->add($tab);
//$leftPanel->add($featureCalendar);

$clear = new Panel('clear');
$clear->setUnique('clear');


$rightPanel2 = new Panel('right2');
$rightPanel2->setUnique('right2');

//$tab->add($feed,'Latest News');

$center->add($rightPanel);
$center->add($leftPanel);
$center->add($clear);
$center->add($rightPanel2);


//$center->add($welcome);

$page->process();
$page->show();

//$feed->awesomeDebug();

?>
