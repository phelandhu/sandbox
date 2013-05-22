<?php
// meh.php
/***********************************************
* Created:            Apr 26, 2013 10:42:47 AM
* Last Modified:      Apr 26, 2013 10:42:47 AM
*
* [LEFT BLANK FOR PROGRAM DESCRIPTION]
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
include ("common/class/DebugUtils.class.php");
echo "Some wierd shit\n";
debug_backtrace();
echo "More \n";
debugUtils::callStack(debug_backtrace());