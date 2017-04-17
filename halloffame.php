<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$page->setTitle('Hall of Fame - Cortland Music Park');


//manage subnav for hall of fame
$subNav= new Panel('subNav');
$subNav->setUnique('subNav');

$bar = $page->findChild('bar');

if(!empty($bar)){
$bar->add($subNav);
}

$membershipForm = new Menu('Hall Of Fame Honor List','halloffamehonorlist.php');
$subNav->add($membershipForm);
//end manage subnav


$center = $page->findChild('center');

$rightPanel = new Panel('right');
$rightPanel->setUnique('right');

$leftPanel = new Panel('left');
$leftPanel->setUnique('left');

$clear = new Panel('clear');
$clear->setUnique('clear');


$image = new Text('','<img src="image/Hall-of-Fame.jpg" />');
$image->setUnique('hallOfFameImage');


$view = new GalleryView();
$view->setTag('hall of fame');


$text = new Text("Hall Of Fame",'
<p>The highlight of the Cortland Country Music Park is the New York State Country Music Hall of Fame, the original reason for the Cortland Country Music Park.
</p>
<p>When you visit the New York State Country Music Hall of Fame, from the outside it is deceiving. As you enter the inside your breathe is taken away by the array of memorabilia from the many Nashville and local entertainers. For instance, Jack Greene\'s suit, Kenny Rogers\' famous white suit, Jeannie C. Riley\'s dress, and Tammy Wynette\'s $10,000 sequined dress. See the walls of plaques of persons inducted into the Hall of Fame and the Hall of Honor. Also see the one of a kind pictures from over the last 30 years and of course the memorabilia from our local musicians.
</p>
<p>
<br />
<b>Admission is $3 per person
</b>
<br />
<br />
<b>Hours:
</b>
<br />Tuesdays and Fridays 9 am to 4pm 
<br />Saturday Nights 
<br />Sunday Afternoons 
<br />
<b>
<br />For Appointment:
</b>
<br />Please contact us at 
<br />contact@cortlandmusicpark.org 
<br />or 
<br />call the office at (607) 753-0377 
<br />to arrange for a tour, so someone will be available to see you through the Hall of Fame.
</p>
<br />
<b>Hall of Fame and Hall of Honor Inductees
</b>
<p>A special dinner dance is presented on the last Sunday in October each year; to induct qualified individuals into the Hall of Honor, three individuals are inducted into the Hall of Fame and to present the Horizon Award and Lifetime Achievement Award.
</p>
<p>To be inducted into the Hall of Fame, you must first be put into the Hall of Honor. All nominees for the Hall of Fame are picked from the Hall of Honor. To be eligible for the Hall of Honor, you must have been born or living in New York State and must have been playing Country Music for at least 10 years. If you meet these qualifications or know someone that does, you can send a resume to:
</p>
<p style="text-align:center">SCMA 
<br />Box 402 
<br />Cortland, N.Y. 13045 
<br />Attn: Bill Knight Hall of Fame Director 
<br />
</p>
');
$image->setUnique('hallOfFameText');


$leftPanel->add($image);
$leftPanel->add($view);
$rightPanel->add($text);

$center->add($rightPanel);
$center->add($leftPanel);
$center->add($clear);

//$center->add($welcome);

$page->process();
$page->show();

//$page->awesomeDebug();

?>
