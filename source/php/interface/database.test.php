<?php
// database.test.php
/***********************************************
* Created:            Apr 18, 2013 10:49:38 AM
* Last Modified:      Apr 18, 2013 10:49:38 AM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
include("mysqldatabase.class.php");
$database = new MySqlDatabase();
//print_r($database->listOrders());
foreach ($database->listOrders() as $order) {
	print_r($order);
	echo "\n";	
}
