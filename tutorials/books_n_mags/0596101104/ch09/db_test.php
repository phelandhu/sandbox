<?php
// Iclude our login information
include('db_login.php');
// Connect
$connection = mysql_connect($db_host, $db_username, $db_paswsword);
if(!$connection) {
    die("Could not connect to the database: <br/>" . mysql_error());
}
// Select the database
$db_select = mysql_select_db($db_database);
if (!$db_select) {
	die("Could not connect to the database: " . mysql_error());
}
// Assign the query
$query = "SELECT * FROM `books` NATURAL JOIN `authors`";
// Execute the query
$result = mysql_query( $query );
if( !$result ) {
	die("Could not query the database: <br/>" . mysql_error());
}

// Fetch and display the results
while ($result_row = mysql_fetch_row(($result))) {
	echo "Title: " . $result_row[1] . "<br/>";
	echo "Author: " . $result_row[4] . "<br/>";
	echo "Pages: " . $result_row[2] . "<br/>";
}
// Close the connection
mysql_close($connection);