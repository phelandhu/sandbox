<?php
// DebugUtils.class.php
/***********************************************
* Created:            Apr 26, 2013 10:42:47 AM
* Last Modified:      Apr 26, 2013 10:42:47 AM
*
* This will be an extended class with multiple debug utilities that I need in my code.
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
class debugUtils {
	// Usage: debugUtils::callStack(debug_backtrace());
	public static function callStack($stacktrace) {
		print str_repeat("=", 50) ."\n";
		$i = 1;
		foreach($stacktrace as $node) {
			print "$i. ".basename($node['file']) .":" .$node['function'] ."(" .$node['line'].")\n";
			$i++;
		}
	}
}