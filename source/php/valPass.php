<?php
// valPass.php
/***********************************************
* Created:            Jan 11, 2013 9:21:09 AM
* Last Modified:      Jan 11, 2013 9:21:09 AM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
$fail1 = "abcdefg1";
$fail2 = "1234567A";

$new_password = $fail1;
$matches = 0;
$passes = false;
$found_digit = $found_punct = $found_upper = $found_lower = false;
foreach (str_split($new_password) as $char) {
	if (ctype_digit($char) && !$found_digit) {
		$found_digit = true;
		$matches++;
	}
	if (ctype_punct($char) && !$found_punct) {
		$found_punct = true;
		$matches++;
	}
	if (ctype_upper($char) && !$found_upper) {
		$found_upper = true;
		$matches++;
	}
	if (ctype_lower($char) && !$found_lower) {
		$found_lower = true;
		$matches++;
	}
	if ($matches >= 2) {
		$passes = true;
		break;
	}
}
echo "\nResult is: ", $passes, "\n";
echo "Vars are: \nfound_digit:",  $found_digit, "\nfound_punct: ",$found_punct, "\nfound_upper: ",$found_upper, "\nfound_lower: ",$found_lower, "\nmatches: ", $matches, "\n";