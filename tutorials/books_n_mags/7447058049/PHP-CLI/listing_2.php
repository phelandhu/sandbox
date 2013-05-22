#!/usr/bin/php
<?php
/***********************************************
* Created:            Thu 06 Sep 2012 10:04:17 AM PDT 
* Last Modified:      Thu 06 Sep 2012 10:04:17 AM PDT
*
* Parse the text file and show each line
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
	$filename = "test.txt";
	$lines = file($filename);

	foreach ( $lines as $num => $line ) {
		$line = trim($line);
		echo "$num : $line\n";
	}

	exit(0);
?>
