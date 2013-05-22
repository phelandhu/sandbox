<?php
// randomPlaylist.php
/***********************************************
* Created:            Dec 27, 2012 3:15:51 PM
* Last Modified:      Dec 27, 2012 3:15:51 PM
*
* This file will accept passed parameters and then create a playlist based upon those parameters, 
* needing to accept other parameters as necessary to determine the order of the playlist 
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
//include some files
require_once("mp3Utils.class.php");
// connect to the database
// simple right now
$mysqli = new mysqli('localhost', 'webPlayerUser', 'webPlayer', 'webPlayer');

$mp3utils = new mp3Utils();

// Get the parameters
parse_str(implode('&', array_slice($argv, 1)), $_GET);

if(isset($_GET["search"])||isset($_GET["order"])) {
	echo "We have GET data";
	if(isset($_GET["search"])) {
		$search = $_GET["search"];
		//determine what the search is based upon.
		switch($search) {
			case "artist":
				break;
			case "genre":
				break;		
		}
	} // right now there is nothing else to do if no search is sent in
	if(isset($_GET["order"])) {
		$order = $_GET["order"];
		//determine what the search is based upon.
		switch($order) {
			case "artist":
				break;
			case "genre":
				break;
		}
	} else { // there is no order, total anarchy, yay!!
		
	}

} else { // complete random search and order, more anarchy
	echo "Hello, World\n";
	$result = searchMusic($mysqli, "artist", "Aereda", "year");
	while($row = $result->fetch_assoc()) {
		echo $row["path"], "\n";
		$data = $mp3utils::mp3Data($row["path"]);
		if($data["status"]==1){
			while(list($key, $value) = each($result))
			{
				print("$key: $value<br>\r\n");
			}
		} else {
			
		}
		
	}
}
	
function searchMusic($mysqli, $searchField=NULL, $searchValue=NULL, $orderField=NULL) {

	$response = NULL;
	$baseSQL = "SELECT * FROM music";
	if(isset($searchField)) {
		$baseSQL .= sprintf(" WHERE %s = '%s'", $searchField, $searchValue);
	}
	if(isset($orderField)) {
		$baseSQL .= sprintf(" ORDER BY %s", $orderField);
	}
	$result = $mysqli->query($baseSQL);
	$response = $baseSQL;
	return $result;
}




function searchByArtist($artist) {
	$sql = sprintf("SELECT * FROM music WHERE artist = %s", $artist);
	
}

function orderByYear() {
	
}

function isCli() {
	return php_sapi_name()==="cli";
}

