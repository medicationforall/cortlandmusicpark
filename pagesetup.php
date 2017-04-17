<?php
//create session variable
$sitename = 'cmp';


	if(empty($_SESSION['site']) || strcmp($_SESSION['site']->getSettings()->getSite(),$sitename)!=0)
	{
		Core::debug('site is empty');

		$site = new Page('Cortland Country Music Park &amp; Campgrounds','./starter/style.css');
		$site->addStyle('cmp.css');
		$site->addStyle('./starter/jquery-te-1.4.0.css');
		$site->addPrintStyleSheet('print.css');
		$site->setFavIcon('true');

		$settings = $site->getSettings();
		$settings->setSite($sitename);
		$settings->setScriptBase('./framework/script');
		$settings->setUploadPath('image/gallery');


		$site->getSettings()->setEmail('support@cortlandmusicpark.org');

		$site->setScriptsTop(false);

		//this flag is for turning off database functionality
		//NOTE use at your own risk the framework is intended to be used with adatabase
		//$site->getConnect()->dbConnect(false);


		//Change the username and password
		$site->setConnect(new Connect('<you username>','<your password>','localhost','cmp'));

		$site->script('jquery-*.min.js');
		$site->script('jquery-ui-*.custom.min.js');
		$site->script('isInViewport.min-*.js');
		$site->script('dialog.js');

		//Change the salt value
		$site->getAccount()->setSalt('<your salt>');


		//unless a whitelist is set html tags will not be allowed to be saved within the CMS. default location is in the root directory uncomment the line below to add a custom location
		//$site->getHTMLParser()->setWhiteList('../starter/whitelist.conf');

		$account = $site->getAccount();

		//setup initial meta information
		$site->meta('Author','James M Adams');
		$site->meta('viewport','width=device-width, initial-scale=1');

		//content
		$login = new LoginControl();

		$header = new Panel("header");
		$header->setUnique("header");

		$loginLink= new Code('<a class="loginLink" href="?login=true">&nbsp;</a>');

		$merlinImagePath = 'image/merlinLogo3.png';
		$merlinWidth = '123';


		if(date('m')==10 && date('d') == 31){
			$merlinImagePath = 'image/halloween3a.png';
		$merlinWidth = '148';

		}


		$logo = new Code("<img id='merlin' src=\"$merlinImagePath\" alt=\"Merlin\" style='width:".$merlinWidth."' /><h1><span>C</span>ortland <span>C</span>ountry <span>M</span>usic <span>P</span>ark &amp; <span>C</span>ampgrounds</h1>");

		$header->add($loginLink);
		$header->add($logo);

		$bar = new Panel('bar');
		$bar->setUnique('bar');

		$nav = new Panel('nav');
		$nav->setUnique('nav');

		$home = new Menu('Home','index.php');
		$nav->add($home);

		$calendar = new Menu('Calendar','calendar.php');
		$calendar->setState(true);
		$nav->add($calendar);

		$photos = new Menu('Photos','gallery.php');
		$photos->setState(true);
		$nav->add($photos);

		$bands = new Menu('Bands','bands.php');
		$bands->setState(true);
		$nav->add($bands);

		$dinnerShow = new Menu('Dinner Shows','dinnershows.php');
		$nav->add($dinnerShow);

		$menu = new Menu('Menu','menu.php');
		$nav->add($menu);

		$membership = new Menu('Membership','membership.php');
		$nav->add($membership);

		$map = new Menu('Map','map.php');
		$map->setState(true);
		$nav->add($map);

		$directions = new Menu('Directions','directions.php');
		$nav->add($directions);

		$opryBarn = new Menu('Opry Barn','oprybarn.php');
		$nav->add($opryBarn);

		$hallOfFame = new Menu('Hall Of Fame','halloffame.php');
		$nav->add($hallOfFame);

		$campGrounds = new Menu('Camp Grounds','campgrounds.php');
		$nav->add($campGrounds);

		$history = new Menu('History','history.php');
		$nav->add($history);


		$contact = new Menu('Contact','contact.php');
		$nav->add($contact);


		$center = new Panel("center");
		$center->setUnique("center");

		//$announcement = new Panel('announcements');
		//$announcement->setUnique('announcements');
		//$announcements->addClass('dialogs');

		$footer = new Panel('footer');
		$footer->setUnique('footer');

		$fingerLakes = new Code('<a href="http://www.fingerlakes.org" target="_blank"><img src="image/fltalogo.jpg"></a>');

		$copyright = new Code('&copy; 2013 - '.date('Y').' Statewide Country Music Association Inc.');


		$footer->add($copyright);
		$footer->add($fingerLakes);
		

		$site->add($login);
		$site->add($header);
		$site->add($bar);
		$bar->add($nav);
		$site->add($center);
		$site->add($footer);


		//create bandList
		$bandList = new BandList();
		$bandList->setRefPage('bands.php');
		$site->addApp('bandList',$bandList);

		//echo 'creating gallery';
		$gallery = new Gallery2('','image/gallery');
		$gallery->addTagToIgnore('archive');
		$gallery->setRefPage('gallery.php');
		$gallery->setThumbSize(140);
		$gallery->setThumbCompression(40);
		$site->addApp('gallery2',$gallery);

		$calendar = new CmpCalendar('','month','calendar');
		$calendar->setEventClass('CmpEvent');
		$calendar->setRefPage('calendar.php');
		$site->addApp('calendar',$calendar);

		$_SESSION['site']=$site;

	}
?>
