<?php
// mp3Data.php
/***********************************************
* Created:            Jan 2, 2013 12:21:54 PM
* Last Modified:      Jan 2, 2013 12:21:54 PM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
class mp3Utils {
	
	static function mp3Data($mp3) {
		$response = null;
		$filesize = filesize($mp3);
		$file = fopen($mp3, "r");
		
		fseek($file, -128, SEEK_END); // It reads the
		
		$tag = fread($file, 3);
		
		if($tag == "TAG") {
			$response["status"] = 1;
			$response["song"] = trim(fread($file, 30));
			$response["artist"] = trim(fread($file, 30));
			$response["album"] = trim(fread($file, 30));
			$response["year"] = trim(fread($file, 4));
			$response["comment"] = trim(fread($file, 30));
			$response["genre"] = trim(fread($file, 1));
		} else {
			$response["status"] = 0;
			$response["message"] = "MP3 file does not have any ID3 tag!";
		}
		
		fclose($file);
		
		return $response;

	}
}