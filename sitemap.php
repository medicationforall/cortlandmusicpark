<?php
include('global.php');
include('pagesetup.php');

$site = clone $_SESSION['site'];

$nav= $site->findChild('nav');


$site->process();

$sitemap = new SiteMap($site);
$sitemap->add($nav);

$sitemap->show();

//print $site->debug();

?>
