#!/usr/bin/php
<?php
/***********************************************
* Created:            Thu 06 Sep 2012 10:03:33 AM PDT 
* Last Modified:      Thu 06 Sep 2012 10:04:03 AM PDT
*
* Just showing some crap for the command line
* It will display the arguments that you give to it on the command line
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
	if(PHP_SAPI == 'cli') {
		echo "Running as Command Line Interpreter\n";
	}
	
	echo "Number of arguments: " . $_SERVER['argc'] . "\n";

	$arguments = $_SERVER['argv'];
	foreach ($arguments as $nr => $argument) {
		echo "arguments[$nr] = $argument\n";
	}

	exit(0);
?>
