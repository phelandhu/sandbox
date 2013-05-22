<?php
// x-Debug.php
/***********************************************
* Created:            Sep 28, 2012 8:22:17 AM
* Last Modified:      Sep 28, 2012 8:22:17 AM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/

function fix_string($a)
{
	echo "Called @ ".
			xdebug_call_file().
			":".
			xdebug_call_line().
			" from ".
			xdebug_call_function();
}
function test() {
	$ret = fix_string(array('Derick'));
}
test();
?>