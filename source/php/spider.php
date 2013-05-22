<?php
// spider.php
/***********************************************
* Created:            May 10, 2013 2:12:03 PM
* Last Modified:      May 10, 2013 2:12:03 PM
*
* This script will download a file and then read its contents
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
$ch = curl_init("http://fsc-bb/sandbox/");
$fp = fopen("manSubmit.php", "w");

curl_setopt($ch, CURLOPT_FILE, $fp);
curl_setopt($ch, CURLOPT_HEADER, 0);

curl_exec($ch);
curl_close($ch);
fclose($fp);