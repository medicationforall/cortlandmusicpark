<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$calendar = $_SESSION['site']->getApp('membershipCalendar');

if($calendar == null){
	$calendar = new Calendar('Upcoming New Membership Events','upcoming','list');
	$calendar->setEventClass('CmpEvent');
	$calendar->setCustomWhere("AND `type`='membership'");
	$calendar->setRefPage('calendar.php');
	$_SESSION['site']->addApp('membershipCalendar',$calendar);
}

$page->setTitle('Membership - Cortland Music Park');

//manage subnav for membership
$subNav= new Panel('subNav');
$subNav->setUnique('subNav');

$bar = $page->findChild('bar');

if(!empty($bar)){
$bar->add($subNav);
}

$membershipForm = new Menu('Membership Form','membershipform.php');
$subNav->add($membershipForm);
//end manage subnav

$center = $page->findChild('center');

$rightPanel = new Panel('right');
$rightPanel->setUnique('right');

$leftPanel = new Panel('left');
$leftPanel->setUnique('left');

$text = new Text("Membership",'
<p>Any person interested in promoting and preserving good music (especially, "country music") may become a member of the Association. Membership fees are $15.00, membership is good for a year from date of payment. $15.00 Membership fee is required annually; after six months of delinquent dues, members shall be dropped from the membership roll.
</p>
<p>
<b>Membership Benefits:
</b>
</p>
<ol>
<li>To attend and speak at all meetings of the Association (Monthly meetings are held on the second Tuesday of each month and the Annual Meeting is held on the second Tuesday of May)
</li>
<li>To vote at the the Annual Meeting, and on Amendments to the By-Laws at the Monthly Meetings that they attend.
</li>
<li>To vote in annual elections after a 3 month period.
</li>
<li>To be eligible to hold office in the Association (other requirements apply- Article 9, Election of Officers)
</li>
<li>To receive communications, such as Newsletter, and correspondence as may be declared by the Board of Directors.
</li>
<li>As a new member you will be sent a Welcome Letter, including a copy of the By-Laws of the Association. This will be sent out by the Membership Director.
</li>
<li>Get a copy of the 
<a href="membershipform.php">Membership form
</a>
</li>
</ol>
<div style="text-align:center">
<img src="image/CCMSlogoSmall.png" />
</div>
');

$text->setUnique('membershipText');

$center->add($text);
//$leftPanel->add($text);
//$center->add($rightPanel);
//$rightPanel->add($calendar);



$page->process();
$page->show();

//$page->awesomeDebug();

?>
