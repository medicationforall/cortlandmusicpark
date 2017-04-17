<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$page->setTitle('Campgrounds - Cortland Music Park');

$page->setStyle('
#center{
min-height:700px;
}

.currency{
text-align:right;
}
');

//manage subnav for campground
$subNav= new Panel('subNav');
$subNav->setUnique('subNav');

$bar = $page->findChild('bar');

if(!empty($bar)){
$bar->add($subNav);
}

$map = new Menu('Map','map.php');
$subNav->add($map);

$pamphlet = new Menu('Camp Ground Pamphlet (PDF)','files/publication.pdf');
$pamphlet->setTarget(true);
$subNav->add($pamphlet);
//end manage subnav


$center = $page->findChild('center');

$images = new Text('','
<img src="image/dsc00130.jpg" style="width:300px" />
<img src="image/Paddleboats.jpg" style="width:300px" />
<img src="image/Camping.jpg" />
<img src="image/Camping2.jpg" />

');

$images->setUnique('campgroundImages');
$images->addClass('images');

$quote =new Text('','
<p>Our campground is set around a beautiful picturesque pond with a water spray in the 
middle of the pond.
</p>
<p>We are now proud members of the 
<a href="http://www.fingerlakes.org" target="_blank">Finger Lakes Tourism Alliance
</a>!
</p>
');

$quote->setUnique('campgroundQuote');

$text = new Text("Camp Grounds",'
<p>We have 107 campsites, water and electric are available for most sites. Toilets and showers are accessible in three different locations. Dumpsters and a dump station are also available. There are no sewer hook-ups, but we have a honey wagon available twice a week if you need it.
</p>
<p>Catch and Release fishing in the pond. Bass, Pike, Carp, and Bluegill, our biggest fish caught is a 29 inch Pike and a 6.5 pound Bass.
</p>
<p>During the summer we hold a Fishing Derby, free hot dogs and soda are available for the Derby and prizes are given for largest fish caught.
</p>
<p>We have a Recreation Hall available for luncheons, family reunions, parties, etc. Our campers come together for potluck dinners and pancake breakfasts.
</p>
<p>Check out our 
<a href="map.php">Map of the site
</a>and 
<a href="directions.php">Directions
</a>
</p>
');

$text->setUnique('campgroundText');

$rates = new Text('','
<p>
<b>Seasonal and Nightly Rates</b>
<table>
<tr>
<td>1 Night:</td><td class="currency">$28.00</td>
</tr>
<tr>
<td>2 Nights:</td><td class="currency">$56.00</td>
</tr>
<tr>
<td>3 Nights:</td><td class="currency">$84.00</td>
</tr>
<tr>
<td>Weekly:</td><td class="currency">$170.00</td>
</tr>
<tr>
<td>Monthly:</td><td class="currency">$496.00</td>
</tr>
</table>
<br />
Short Season (Memorial Day through Labor Day) <br />
$800.00<br /><br />
Long Season (April 15th through October 15th) <br />$950.00
</br>
</br>
<b>Please note that if you are a seasonal camper and wish to come in earlier than the opening date for that season you will have to pay $28.00 per day for the extra days. Also if you wish to stay longer or leave your camper on your site, it will cost the extra $28.00 per day.
 </br></br>
Thank You</br>
The Management
</b>
</p>
');
$rates->setUnique('campgroundRates');

$center->add($images);
$center->add($quote);
$center->add($text);
$center->add($rates);

//$center->add($welcome);

$page->process();
$page->show();

//$page->awesomeDebug();

?>
