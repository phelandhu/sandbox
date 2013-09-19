#!/usr/bin/php
<?php
/***********************************************
* Created:            Thu 11 Oct 2012 10:34:58 AM PDT 
* Last Modified:      Thu 11 Oct 2012 10:35:51 AM PDT
*
* Example code to start maintenance scripts to test to see if it is being run from cli or browser.
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
if (php_sapi_name() == 'cli' || php_sapi_name() == 'cgi') {
	$cli = true;
    printf("We are on the command line interface\n");
} else {
    printf("We are running from a web browser");
}
    exit(0);
?>

