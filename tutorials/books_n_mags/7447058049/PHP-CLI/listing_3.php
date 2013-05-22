#!/usr/bin/php
<?php
/***********************************************
* Created:            Thu 06 Sep 2012 10:04:22 AM PDT 
* Last Modified:      Thu 06 Sep 2012 10:04:22 AM PDT
*
* Parse a CSV file and show each item as a separate line
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
	$file = fopen("list.csv", "r");
	while (($data = fgetcsv($file, 0, ",")) !== FALSE) {
		echo "Line content:\n";
		foreach ( $data as $nr => $entry) {
			$entry = trim($entry);
			echo "$entry\n";
		}
	}
	fclose($file);
	exit(0);
?>
