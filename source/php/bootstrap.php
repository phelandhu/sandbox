<?php
// bootstrap.php
/***********************************************
* Created:            Apr 16, 2013 11:51:38 AM
* Last Modified:      Apr 16, 2013 11:51:38 AM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
require_once("common/db.php");

$mysqli = new mysqli(DB_SERVER, DB_SERVER_USERNAME, DB_SERVER_PASSWORD, DB_DATABASE);
