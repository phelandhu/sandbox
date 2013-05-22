<?php
/***********************************************
* Created:            Thu 06 Sep 2012 10:10:28 AM PDT 
* Last Modified:      Thu 06 Sep 2012 10:10:28 AM PDT
*
* The PHP page of the AJAX test/demonstration, the part the HTML page talks to to get/
* send information from/to the server
*
* Mike Browne - phelandhu@gmail.com
***********************************************/

define(HOST, "localhost");
define(USER, "testUser");
define(PW, "testPW");
define(DB, "sandbox");

$connect = mysql_connect(HOST,USER,PW)
or die('Could not connect to mysql server.' );

mysql_select_db(DB, $connect)
or die('Could not select database.');

$term = strip_tags(substr($_POST['search_term'],0, 100));
$term = mysql_escape_string($term);

$sql = "select name,phone
from directory
where name like '%$term%'
or phone like '%$term%'
order by name asc";

$result = mysql_query($sql);

$string = '';

if (mysql_num_rows($result) > 0){
	while($row = mysql_fetch_object($result)){
		$string .= "<b>".$row->name."</b> - ";
		$string .= $row->phone."</a>";
		$string .= "<br/>\n";
	}

}else{
	$string = "No matches!";
}

echo $string;
?>
