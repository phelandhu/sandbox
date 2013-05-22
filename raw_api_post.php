<?php
/*
A script allowing quick POST's to the game management API.
Cantor specific for now, as they're the only ones using that API.
*/
$baseURL = "http://wagerplayer";

$default_urlPostXML = $baseURL . "/admin/api/v2/event/create.xml?wapi_client_user=cantor&wapi_client_pass=977f4f740a9fe91de93a6ce06a156920";

$sessionCreationURL = $baseURL . "/wapi1.php?wapi_client_user=cantor&action=bet_customer_login&wapi_client_pass=977f4f740a9fe91de93a6ce06a156920&terminal_name=1000001";
/*
 $default_url = 'http://csbdev.cgaming.local/admin/api/v2/event/create.xml?wapi_client_user=cantor&wapi_client_pass=977f4f740a9fe91de93a6ce06a156920';
*/
//$default_urlPostXML = 'http://csbstage.cgaming.local/admin/api/v2/event/create.xml?wapi_client_user=cantor&wapi_client_pass=977f4f740a9fe91de93a6ce06a156920';

function sendData($URL, $postData) {
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL,            $URL);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1 );
	curl_setopt($ch, CURLOPT_POST,           1 );
	curl_setopt($ch, CURLOPT_POSTFIELDS,     $postData );
	curl_setopt($ch, CURLOPT_HTTPHEADER,     array("Content-Type: text/plain"));
		
	$result=curl_exec ($ch);
	return $result;
}

ini_set("memory_limit", "1500M");

if (!empty($_POST)) {
	switch($_POST["event"]) {
		case "postXML":
			$urlPostXML = $_POST["urlPostXML"] . "&session=" . $_POST["sessionId"];
			
			if (isset($_POST["debug"])) {
				$url .= "&XDEBUG_SESSION_START=phpstorm";
			}
			
			$result = sendData($urlPostXML, $_POST["body"]);
			
			echo "<pre>";
			if (strpos($result, "<style") === false && strpos($result, "<hr>") === false) {
				echo htmlentities($result);
			} else {
				echo $result;
			}
			echo "</pre>";
			echo "<hr />";

			break;
		case "session":
			$urlSession = $_POST['urlSession'] . "&username=" . $_POST['userName'] . "&password=" . $_POST['passWord'];
			echo $urlPostXML, "<br />";
			$result = sendData($urlSession, "");
			print_r($result);
			echo "Test";
			break;
		default:
			break;
	}
} else {
	$urlPostXML = $default_urlPostXML;
	$_POST["body"] = "";
}
		
	$debug_checked = (isset($_POST["debug"])) ? " checked=\"checked\" " : "";

?>

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
	URL: <input size="100" type="text" name="urlPostXML"
		value="<?php if(isset($_POST['$urlPostXML'])) { echo $_POST['$urlPostXML']; } else { echo $urlPostXML; } ?>" /> <input
		<?php echo $debug_checked?> type="checkbox" name="debug" value="1" />
	Debug<br /> Body:
	<textarea rows="20" cols="100" name="body">
<?php if(isset($_POST['body'])) { echo stripslashes($_POST['body']); }?>
	</textarea>
	<br /> Session Id:<input type="text"  cols="100" name="sessionId" value="<?php if(isset($_POST['sessionId'])) { echo $_POST['sessionId']; }?>" />
	<br /> <input type="submit"><br />
	<input type="hidden" name="event" value="postXML" />
</form>
Generate session ID:
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
	URL: <input size="100" type="text" name="urlSession"
		value="<?php if(isset($_POST['urlSession'])) { echo $_POST['urlSession']; } else { echo $sessionCreationURL; } ?>" />
		<br /> User Name:<input type="text" cols="100" name="userName" value="<?php if(isset($_POST["userName"])) { echo $_POST["userName"]; }?>">
		<br /> Pass Word:<input type="text" cols="100" name="passWord" value="<?php if(isset($_POST["passWord"])) { echo $_POST["passWord"]; }?>">
	<br /> <input type="submit"><br />
	<input type="hidden" name="event" value="session" />
</form>
