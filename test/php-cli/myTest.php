#!/usr/bin/bash
<?php
	$systems = file("system_test.txt");

	foreach($systems as $system)
	{

		$server = explode(',', $system);
		$port = 22;
		print_r($server);
/*
		$fp = @fsockopen($system,$port,$errno,$errstr,10);
		if(!$fp)
		{
			echo "Port $port not available on $system";
		}
		else{
			echo "Port $port is open on $system";
			fclose($fp);
		}
*/
	}
?>
