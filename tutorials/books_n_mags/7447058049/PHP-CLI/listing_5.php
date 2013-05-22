#!/usr/bin/php
<?php
/***********************************************
* Created:            Thu 06 Sep 2012 10:04:28 AM PDT 
* Last Modified:      Thu 06 Sep 2012 10:04:28 AM PDT
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
	$exists = posix_access("/etc/passwd", POSIX_F_OK);
	if($exists) echo "file exists\n";

	$read = posix_access("/etc/passwd", POSIX_R_OK);
	if($read) echo "file is readable\n";

	$write = posix_access("/etc/passwd", POSIX_W_OK);
	if($write) echo "file is writeable\n";

	$ex = posix_access("etc/passwd", POSIX_X_OK);
	if($ex) echo "file is executable\n";

	exit(0);
?>

