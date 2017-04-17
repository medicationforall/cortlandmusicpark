<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];


$center = $page->findChild('center');

$text = new Text('History','
<p>The Cortland Country Music Park is a nonprofit all volunteer organization, governed by elected officers and an elected board of directors. The park is the result of a dream of a local musician, named Merlin Reynolds. Merlin envisioned a locally based Hall of Fame for country western musicians from New York State. Merlin’s dream became a reality when Lake Mary Campgrounds went bankrupt in 1984 and with the influence and financial backing of Dr. John Eckel and his wife Loretta they purchased the property.
</p>
<p>When the campgrounds was purchased, there were about 5 campsites with no water or electric, (now 106 with water and electric on most), one A-Frame house in very bad condition, (now our Hall of Fame), a very dirty pond, and a pole barn with overhead doors and a dirt floor that stored campers, (now our Opry Barn).
</p>
<p>With the voluntary hard work of all the members and friends of the park, improvements to the existing buildings were made into the wonderful facility you see today. Along with the buildings, the campground was improved and an outdoor stage was added for larger events.
</p>','historyText');

$center->add($text);

$page->process();
$page->show();

//$page->awesomeDebug();

?>
