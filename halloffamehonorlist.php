<?php
include('global.php');
include('pagesetup.php');

//create the honor table outside of the cloned page.
$hallTable = $_SESSION['site']->getApp('hallTable');

if($hallTable == null){
	$hallTable = new HallTable();
	$_SESSION['site']->addApp('hallTable',$hallTable);
}


$page = clone $_SESSION['site'];

//Optional logged in user debug code (don't use in production code!)
#$page->getAccount()->setName('sample_user');
#$page->getAccount()->setLogin(true);
#$page->getAccount()->setMode('admin');

$page->setTitle('Hall of Fame Honor List - Cortland Music Park');

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

$page->setStyle('
#center
{
text-align:center;
}

.hallTable{
display:inline-block;
text-align:left;
}

table{
border-spacing:0px;
}


table td.hcenter
{
text-align:center;
}

th{
padding-right:10px;
}

.headerSortDown
{
padding-left:15px;
background:url(\'image/arrow_down.png\') no-repeat left;
}

.headerSortUp
{
padding-left:15px;
background:url(\'image/arrow_up.png\') no-repeat left;
}

td{
padding:2px;
}

tr.modified td{
background:#c0ddc0;
}

tr:hover td{
background:#c0c0c0;
}

.editMember{
text-decoration:none;
width:15px;
margin-right:4px;
display:inline-block;
background: url(\'image/page_white_edit_grey.png\') no-repeat;
}

.editMember:hover{
background: url(\'image/page_white_edit.png\') no-repeat;
}

.deleteAward{
text-decoration:none;
width:15px;
float:right;
background: url(\'image/delete_grey.png\') no-repeat;
}

.deleteMember{
text-decoration:none;
width:15px;
margin-right:4px;
display:inline-block;
background: url(\'image/delete_grey.png\') no-repeat;
}

.deleteAward:hover , .deleteMember:hover{
background: url(\'image/delete.png\') no-repeat;
}


');


$center = $page->findChild('center');

$center->add($hallTable);

$page->process();
$page->show();

//$page->awesomeDebug();

?>



