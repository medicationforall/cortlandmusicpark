<?php

class CmpCalendar extends Calendar{

/**
 * 
 */
	function cHeader(){
		parent::cHeader();
		echo '<div class="printStuff" style="text-decoration:none">';

		//echo 'Email: <a href="mailto:someone@example.com?Subject=Hello%20again">scmamanagingdirector@centralny.twcbc.com</a>';
		echo 'Email: <a href="mailto:scma@cortlandmusicpark.org">scma@cortlandmusicpark.org</a>';
		echo ' Website: <a href="http://cortlandmusicpark.org">cortlandmusicpark.org</a>';
		echo '</div>';		
	}

/**
 *
 */
	function eventsList(){
		parent::eventsList();
		//echo $this->getMode();
		#if(strcmp($this->getMode(),'currentweek')==0){
		#	echo '<div style="text-align:center"><a href="calendar.php?model=list&mode=yearcurrent">All upcoming events</a></div>';
		#}
	}

}

?>
