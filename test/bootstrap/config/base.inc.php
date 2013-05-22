<?php
/***********************************************
* Created:            Wed 12 Sep 2012 11:10:17 AM PDT 
* Last Modified:      Wed 12 Sep 2012 11:10:17 AM PDT
*
* The base config file
*
* Mike Browne - phelandhu@gmail.com
***********************************************/

class Settings {
    private $database_server = " ";
    private $database_name = " ";
    private $database_user = " ";
    private $database_password = " ";

    public function __construct() {
	// get the database parameters and populate them
	$this->database_server = " ";
	$this->database_name = " ";
	$this->database_user = " ";
	$this->database_password = " ";
    }

    public function getParams() {
	
    }
}

?>

