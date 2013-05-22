<?php
// call_user_test.php
/***********************************************
* Created:            Nov 27, 2012 12:53:04 PM
* Last Modified:      Nov 27, 2012 12:53:04 PM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - phelandhu@gmail.com
***********************************************/

function showMe() {
	echo "Hello World\n";
}

function showMeMore($strIn) {
	echo $strIn;
}

call_user_func("showMe");

call_user_func("showMeMore", "Hi There\n", "Test");