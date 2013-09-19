<?php
	/**
	 * @param $input int
	 * @param $base int the base to convert to
	 * @return string
	 * 
	 * This function will convert decimal to any other base, for larger humbers than PHP can normally handle. First part not 100% testing.
	 */
	function convertDecToBase($input, $base) {
		$result = null;
		$tempInput = $input;
	
		while($tempInput > 0){
			$tempResult = bcmod($tempInput, $base);
			$tempInput = bcdiv($tempInput, $base, 0);
			
			if($tempResult > 9){
				switch($tempResult) {
					case 10:
						$tempResult = 'A';
						break;
					case 11:
						$tempResult = 'B';
						break;
					case 12:
						$tempResult = 'C';
						break;
					case 13:
						$tempResult = 'D';
						break;
					case 14:
						$tempResult = 'E';
						break;
					case 15:
						$tempResult = 'F';
						break;
				}
			}
			$result = $tempResult . $result;
		}

		return $result;
	}
	
function obfuscateString($string, $prefix = true, $count) {
	
}

$string = '3D5D2DE579E21913C';
/*
//echo obfuscateString($string, $prefix, $count);
echo substr_replace($string,"XXXX",-4). "\n";

	$testVal = "76516845448398275101";
	echo $testVal . "\n";

	echo convertDecToBase($testVal, 16);
*/

$convertString = array('315' => '43397118660973477331',
'316' => '88834930879496137071',
'406' => '33716723351604057023',
'430' => '90956399824283723284',
'835' => '52932238672535570169'
);
foreach ($convertString as $betslip_id => $barcode) {
	echo $betslip_id . ", " . convertDecToBase($barcode, 16) . "\n";
}

