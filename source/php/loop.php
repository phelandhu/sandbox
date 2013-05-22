<?php
// loop.php
/***********************************************
* Created:            Apr 16, 2013 11:51:38 AM
* Last Modified:      Apr 16, 2013 11:51:38 AM
*
* Simple example of for looping
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/

$count = 20;
echo "First for loop\n";
$j = 0;
for($i = 0; $i < $count; $i++ ) {
	$k = $j++;
	echo "count is: " . $k . "\n";
}
$j = 0;
echo "Second for loop\n";
for($i = 0; $i < $count; ++$i ) {
	$k = ++$j;
	echo "count is: " . $k . "\n";
}