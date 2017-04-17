<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];
$page->setStyle('
th{
text-align:left
}

td{
width:300px
}

#menuInfo{
margin-top:20px;width:400px
}

tr:hover td{
background:#c0c0c0;
}

');

$page->setTitle('Menu - Cortland Music Park');

$calendar = $_SESSION['site']->getApp('dinnerCalendar');

if($calendar == null){
	$calendar = new Calendar('Upcoming Dinner Specials','upcoming','list');
	$calendar->setEventClass('CmpEvent');
	$calendar->setSearch('Dinner Special');
	$calendar->setRefPage('calendar.php');
	$_SESSION['site']->addApp('dinnerCalendar',$calendar);
}

$center = $page->findChild('center');

$rightPanel = new Panel('right');
$rightPanel->setUnique('right');

$leftPanel = new Panel('left');
$leftPanel->setUnique('left');


$menuText = new Text('Menu Items','<table>
<tr><th>Name</th><th>Price</th></tr>
<tr><td>Chicken Wings</td><td>5/ $4.00</td></tr>
<tr><td>Chicken Wings</td><td>10/ $7.00</td></tr>
<tr><td>Chicken Patty</td><td>$4.00</td></tr>
<tr><td colspan="2">&nbsp;</td></tr>

<tr><td>&frac14;lb Hamburger</td><td>$3.25</td></tr>
<tr><td>Cheeseburger</td><td>$3.50</td></tr>
<tr><td>Deluxe Burger (Lettuce/Tomato/Onion)</td><td>$4.00</td></tr>
<tr><td>Sausage Patty</td><td>$4.00</td></tr>
<tr><td>Hoffman Hot Dog</td><td>$2.50</td></tr>
<tr><td>Grilled Cheese</td><td>$2.00</td></tr>
<tr><td colspan="2">&nbsp;</td></tr>

<tr><td>French Fries</td><td>$2.50</td></tr>
<tr><td>French Fries w/ Gravy</td><td>$2.75</td></tr>
<tr><td>Onion Rings</td><td>$2.50</td></tr>
<tr><td>Mozzarella Sticks</td><td>6/ $3.50</td></tr>
<tr><td colspan="2">&nbsp;</td></tr>

<tr><td>Soda</td><td>$1.25</td></tr>
<tr><td>Water, Coffee, Tea, Lemonade, & Hot Chocolate</td><td>$1.00</td></tr>
<tr><td colspan="2">&nbsp;</td></tr>

<tr><td>Chips</td><td>$0.50</td></tr>
<tr><td>Candy Bars</td><td>$1.00</td></tr>
</table>');

$menuSat= new Text('Pizza','
<!--<br /><b>Slices</b>
<table>
<tr><td>Cheese</td><td>$2.40</td></tr>
<tr><td>Pepperoni</td><td>$3.00</td></tr>
</table>-->
<table>
<tr><td>12" Pizza</td><td>$10.00</td></tr>
<tr><td>Toppings</td><td>$2.00 ea.</td></tr>
</table>
');

$menuSun= new Text('Sunday Specials','<table>
<tr><td>These menu items change every Sunday.</br>Please see the Sunday events in the calendar for more information</td><td>$7.50</td></tr>
</table>');
$menuInfo= new Text('','The kitchen is run by our volunteers.');

$menuSat->setUnique('menuSat');
$menuText->setUnique('menuText3');
$menuInfo->setUnique('menuInfo');
$menuSun->setUnique('menuSun');

$center->add($rightPanel);
//$center->add($leftPanel);

$rightPanel->add($menuInfo);
$rightPanel->add($menuText);



$leftPanel->add($calendar);


$page->process();
$page->show();

//$page->awesomeDebug();

?>
