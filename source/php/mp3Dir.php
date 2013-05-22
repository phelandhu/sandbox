<?php
// mp3Dir.php
/***********************************************
* Created:            Jan 2, 2013 2:59:17 PM
* Last Modified:      Jan 2, 2013 2:59:17 PM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
$dir    = '/x/music';
getDirectory($dir);

function getDirectory( $path = '.', $level = 0 ){
	$ignore = array( 'cgi-bin', '.', '..' );
	// Directories to ignore when listing output. Many hosts
	// will deny PHP access to the cgi-bin.

	$dh = @opendir( $path );
	// Open the directory to the handle $dh

	while( false !== ( $file = readdir( $dh ) ) ){
		// Loop through the directory

		if( !in_array( $file, $ignore ) ){
			// Check that this file is not to be ignored
				
			$spaces = str_repeat( '&nbsp;', ( $level * 2 ) );
			// Just to add spacing to the list, to better
			// show the directory tree.
				
			if( is_dir( "$path/$file" ) ){
				// Its a directory, so we need to keep reading down...
				echo "<strong>$spaces $file</strong>\n";
				getDirectory( "$path/$file", ($level+1) );
				// Re-call this same function but on a new directory.
				// this is what makes function recursive.
			} else {
				echo "$spaces $file\n";
				// Just print out the filename
					
			}
		}
	}
	closedir( $dh );
	// Close the directory handle
}

?>