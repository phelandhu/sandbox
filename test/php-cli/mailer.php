#!/usr/bin/php
<?php
/***********************************************
* Created:            Fri 16 Nov 2012 03:34:01 PM PST 
* Last Modified:      Fri 16 Nov 2012 03:41:25 PM PST
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - phelandhu@gmail.com
***********************************************/
require_once('phpmailer/class.phpmailer.php');

define('GUSER', 'olivier.twist.ferret@gmail.com'); // GMail username
define('GPWD', 'Adept644'); // GMail password

function smtpmailer($to, $from, $from_name, $subject, $body) { 
	global $error;
	$mail = new PHPMailer();  // create a new object
	$mail->IsSMTP(); // enable SMTP
	$mail->SMTPDebug = 0;  // debugging: 1 = errors and messages, 2 = messages only
	$mail->SMTPAuth = true;  // authentication enabled
	$mail->SMTPSecure = 'ssl'; // secure transfer enabled REQUIRED for GMail
	$mail->Host = 'smtp.gmail.com';
	$mail->Port = 465; 
	$mail->Username = GUSER;  
	$mail->Password = GPWD;           
	$mail->SetFrom($from, $from_name);
	$mail->Subject = $subject;
	$mail->Body = $body;
	$mail->AddAddress($to);
	if(!$mail->Send()) {
		$error = 'Mail error: '.$mail->ErrorInfo; 
		return false;
	} else {
		$error = 'Message sent!';
		return true;
	}
}

smtpmailer("phelandhu@gmail.com", "oliver.twist.ferret@gmail.com", "Mike", "Friday Night", "Let's go out later, eh.");

if (!empty($error)) echo $error;
?>

