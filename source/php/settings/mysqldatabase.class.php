<?php
// mysqldatabase.class.php
/***********************************************
* Created:            Apr 18, 2013 10:57:46 AM
* Last Modified:      Apr 18, 2013 10:57:46 AM
*
* Trying some increased capability
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
require_once("database.interface.php");
class MySqlDatabase implements Database {
	
	private $mysqli;
	private $data;
	
	public function __construct() {
		$this->mysqli = new mysqli(DB_SERVER, DB_SERVER_USERNAME, DB_SERVER_PASSWORD, DB_DATABASE);
	}

	function getData() {
		
	}
	
	function query($query) {
		return $this->data = $this->mysqli->query($query);
	}
	
	function getRow() {
		
	}
/*
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
*/
}