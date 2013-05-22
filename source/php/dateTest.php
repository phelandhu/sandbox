<?php
// dateTest.php
/***********************************************
* Created:            Jan 2, 2013 9:39:15 AM
* Last Modified:      Jan 2, 2013 9:39:15 AM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
$date = date("Y-m");
$dtsEnd = $date . '-1 01:59:59';
$newdate = strtotime( '-1 month' , strtotime( $date ));
$dtsStart = date( 'Y-m' , $newdate) . '-1 02:00:00';
echo $dtsStart, "\n";
echo $dtsEnd, "\n";
$number_year = date("Y");

$number_month = strtotime( '-1 month' , strtotime( date("m")));

$written_month = date("F", strtotime("2013-$number_month-1"));

echo $written_month, "\n";