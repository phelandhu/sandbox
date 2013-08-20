<?php
$fileName = "/x/music/queen/classic_queen/queen-classic_queen-07-radio_ga_ga.mp3";
if(file_exists($fileName)) {
	$tag = id3_get_tag( $fileName );
	print_r($tag);
} else {
	echo "File not found";
}
?>