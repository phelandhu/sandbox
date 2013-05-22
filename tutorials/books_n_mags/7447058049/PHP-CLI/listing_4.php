#!/usr/bin/php
<?php
/***********************************************
* Created:            Thu 06 Sep 2012 10:04:25 AM PDT 
* Last Modified:      Thu 06 Sep 2012 10:04:25 AM PDT
*
* Show the process information for a specific user
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
	$uid = posix_geteuid();
	$user = posix_getpwuid($uid);
	echo "User of process: $user[name] \n";
	echo "UID: $user[uid] \n";
	echo "GID: $user[gid] \n";
	echo "Home directory: $user[dir] \n";
	print_r($user);
?>
