#!/usr/bin/php
<?php
/***********************************************
* Created:            Fri 22 Feb 2013 03:25:32 PM PST 
* Last Modified:      Fri 22 Feb 2013 03:25:32 PM PST
*
* Test of the Gmail mail service.
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
	require_once "Mail.php";

	$from = "<mikebrowne2050.gmail.com>";
	$to = "<phelandhu@gmail.com>";
	$subject = "Hi!";
	$body = "Hi,\n\nHow are you?";

	$host = "ssl://smtp.gmail.com";
	$port = "25";
	$username = "mikebrowne2050@gmail.com";  //<> give errors
	$password = "Dodger36";

	$headers = array ('From' => $from,
		'To' => $to,
		'Subject' => $subject);
	$smtp = Mail::factory('smtp',
	array ('host' => $host,
		'port' => $port,
		'auth' => true,
		'username' => $username,
		'password' => $password));

	$mail = $smtp->send($to, $headers, $body);

	if (PEAR::isError($mail)) {
		echo("<p>" . $mail->getMessage() . "</p>");
	} else {
		echo("<p>Message successfully sent!</p>");
	}

    exit(0);
?>

