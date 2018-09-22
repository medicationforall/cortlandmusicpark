<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$page->setTitle('Contact - Cortland Music Park');

$page->setStyle
(
'
	#center
	{
		text-align:center;
	}
	.component.text{
		display:inline-block;
		vertical-align:top;
		text-align:left;
		font-weight:bold;
	}
	.email
	{

		text-align:left;
		display:inline-block;
	}
	.email textarea
	{
		display:block;
	}
'
);



$center = $page->findChild('center');

$contact = new Email('');
$contact->setSubmitText('Send');

$info = new Text('','
COUNTRY MUSIC PARK<br />
1845 Rt. 13N<br />
Cortland, N.Y. 13045<br />
607-753-0377');

$info->setUnique('contactInfo');


$center->add($contact);
$center->add($info);

$page->process();
$page->show();

//$page->awesomeDebug();
?>
