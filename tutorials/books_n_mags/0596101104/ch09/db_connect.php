<?php
include('db_login.php');
$connection = mysql_connect($db_host, $db_username, $db_paswsword);
if(!$connection) {
    die("Could not connect to the database: <br/>" . mysql_error());
}