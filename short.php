<?php
include('global.php');
include('pagesetup.php');

$index = clone $_SESSION['site'];



if(!empty($_POST['shortType']))
{

	//http://php.net/manual/en/function.http-get-request-body.php
	if(!empty($_POST['getToken']) && strcmp($_POST['getToken'],'true')==0){

		$index->getAccount()->setAjaxToken();

		echo $index->getAccount()->getAjaxToken();
		return true;

	}

	//app search
	$found = false;

	$apps = $_SESSION['site']->getApps();

	foreach($apps as $key => $value){
		if(strcmp($_POST['shortType'],$key)==0){
			$found = true;

			$value->short();
		}
	} 

	if($found == false){
			//concessions made for the component name change
			$className=str_ireplace('component','',$_POST['shortType']);
			$className=str_ireplace('comment','CommentBox',$className);
			Core::debug('running short for '.$_REQUEST['shortType']);
			$component = new $className();

			$index->add($component);

			$component->short();
	}
}

?>
