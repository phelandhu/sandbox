#!/usr/bin/php
<?php
/***********************************************
* Created:            Thu 06 Sep 2012 10:04:32 AM PDT 
* Last Modified:      Thu 06 Sep 2012 10:04:32 AM PDT
*
* just some demo for exploding a string
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
	if(PHP_SAPI == 'cli') {
		echo "Hi There!\n";
	}
	$text = "Hello Mister Anderson";
	$split = explode(" ", $text);

	foreach ($split as $num => $part) {
		echo "$part\n";
	}

	preg_match("/Mister/", $text, $matches);
	echo $matches[0] . "\n";

	echo $split[0];
?>
