<?php
include('global.php');
include('pagesetup.php');


$page = clone $_SESSION['site'];

$page->setTitle('Membership Form - Cortland Music Park');

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

$page->setStyle('
#center
{
text-align:center;
}

.text
{
text-align:left;
display:inline-block;
}

.address
{
display:block;
text-align:center;
}
');


$center = $page->findChild('center');


$text = new Text('Membership Form','
NAME _______________________________________<br /><br /> 
ADDRESS ___________________________________<br /><br />
CITY ________________________________________<br /><br />
DATE____________________ ZIP ________________<br /><br />
TEL. # _______________________________________<br /><br />
NEW MEMBER ___________ RENEWAL ____________<br />
');

$text->setUnique('membershipFormText');

$mail = new Text('','
Mail To:<br />
SCMA <br />
BOX 402 <br />
CORTLAND, N.Y. 13045<br /> 
MEMBERSHIP IS $15.00 (PER PERSON) PER YEAR 
');

$mail->setUnique('membershipFormMail');
$mail->addClass('address');

$center->add($text);
$center->add($mail);

$page->process();
$page->show();

//$page->awesomeDebug();

?>
