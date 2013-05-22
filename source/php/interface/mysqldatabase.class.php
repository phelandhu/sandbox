<?php
// mysqldatabase.class.php
/***********************************************
* Created:            Apr 18, 2013 10:47:45 AM
* Last Modified:      Apr 18, 2013 10:47:45 AM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
require_once("database.interface.php");
class MySqlDatabase implements Database {
	
	function listOrders() {
		// Comment
		$result = array("1" => "First","2" => "Second","3" => "Third");
		return $result;
	}

	function addOrder() {
		// Comment
	}
	
	function removeOrder() {
		// Comment
	}
	
}