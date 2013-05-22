<?php
// database.interface.php
/***********************************************
* Created:            Apr 18, 2013 10:46:04 AM
* Last Modified:      Apr 18, 2013 10:46:04 AM
*
* Interface for the database class.
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
interface Database {
	function listOrders();
	function addOrder();
	function removeOrder();
}