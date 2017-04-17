<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$page->setTitle('Opry Barn &amp; Stage - Cortland Music Park');


$center = $page->findChild('center');

$images = new Text('','
<img src="image/oprybarn.jpg">
<img src="image/Loretta_Lynn__Outdoor_Show_.jpg" style="width:250px;">
');

$images->setUnique('opryImages');
$images->addClass('images');

$opry = new Text("Our Opry Barn",'

<p>The centerpiece of the Cortland Country Music Park is the Opry Barn. Among the many events that take place are our regular Saturday Round & Square Dances (7-11 p.m.) and the Sunday afternoon dances (2-6 p.m.).</a>
<ul>
<li>We have a kitchen offering hot dogs, hamburgers, french fries, and many other items including special dinners every so often.</li>
<li>We have a bar with draft beer, bottled and can beer and a limited amount of mixed drinks.</li>
<li>We have Bingo every Monday night. Doors open at 5:00 p.m. and bingo begins at 6:45 p.m.</li>
<li>We cater wedding receptions, private parties, anniversaries, meetings, class reunions, luncheons, banquets and benefits.</li>
<li>Another very popular monthly event is our spaghetti dinner dances (5-7p.m. dinner / 6-9p.m. dancing). Dates vary, so check with us for dates.</li>
</ul>

<p>
The barn has a 50 x 30 ft. hardwood dance floor that is popular with the many dancers that regularly attend functions at the park.<br />
It also has a 50 x 30 ft. stage that can be easily accessed by the many performers that appear regularly and is especially valuable for the many shows performed throughout the year.<br />
In Feb. we have a Valentine’s Dinner Dance and several times throughout the year we have Tribute Dinner Shows performed by our many talented local bands.<br />
In late May or early June we have a Tribute to the Veterans Dinner Dance where we honor our Veterans past and present.<br />
On the last Sunday of Oct. we have our annual Hall of Fame Dinner Show and Dance. This is when we induct 3 new members into the Hall of Fame. We also induct qualified persons into the Hall of Honor and present a Horizon Award and Lifetime Achievement Award.<br />
We are in the process of adding new bathrooms, with 5 toilets for the women’s, and 5 for the men’s with handicap accessibility.
</p>
');

$opry->setUnique('opryText');


$stage = new Text("Our Outdoor Stage",'

<p>
With the ability to comfortably seat 5000 people, the outdoor stage has seen many Nashville entertainers the likes of Loretta Lynn, Charley Pride, The Statler Brothers, George Jones, Little Jimmy Dickens and many more.
</p>

<p>
In recent years, due to the inflation of cost to get a Nashville act, we have not been able to have an outdoor show, but who knows what the future might bring.
</p>
');

$stage->setUnique('opryStage');

$contact = new Text('','
<p>
Call us at 607-753-0377 : Schedule your event, purchase tickets for shows, or for more information!
</p>
');
$contact->setUnique('opryContact');

$center->add($images);
$center->add($opry);
$center->add($stage);
$center->add($contact);

//$center->add($welcome);

$page->process();
$page->show();

//$page->awesomeDebug();

?>
