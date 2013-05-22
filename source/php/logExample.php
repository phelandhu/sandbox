<?php
// logExample.php
/***********************************************
* Created:            Feb 12, 2013 4:39:54 PM
* Last Modified:      Feb 12, 2013 4:39:54 PM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
include("ChromePhp.php");
ChromePhp::log('hello world');
ChromePhp::log($_SERVER);

// using labels
foreach ($_SERVER as $key => $value) {
    ChromePhp::log($key, $value);
}

// warnings and errors
ChromePhp::warn('this is a warning');
ChromePhp::error('this is an error');