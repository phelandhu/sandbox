#!/usr/bin/php
<?php
/***********************************************
* Created:            Fri 22 Feb 2013 04:01:05 PM PST 
* Last Modified:      Fri 22 Feb 2013 04:01:05 PM PST
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
require_once "Mail.php";

 $to = " <phelandhu@gmail.com>";
 $body = "test gmail ";

 $headers = array
  (
  'From' => ' <mikebrowne2050@gmail.com>',
  'To' =>  $to,
  'Subject' => 'test gmail'
  );

$config['use_smtp_mail'] = true;
$config['smtp_port'] = 465;
$config['smtp_host'] = 'ssl://smtp.gmail.com';
$config['smtp_username'] = 'mikebrowne2050@gmail.com';
$config['smtp_password'] = 'Dodger36';

$config['use_smtp_mail'] = true;
$config['port'] = 465;
$config['auth'] = 'true';
$config['host'] = 'ssl://smtp.gmail.com';
$config['username'] = 'mikebrowne2050@gmail.com';
$config['password'] = 'Dodger36';

  $smtp = Mail::factory('smtp',array
           (
           'host' => 'smtp.gmail.com',
           'port' => '25',
           'auth' => true,
           'username' => 'mikebrowne2050@gmail.com',   //gmail user name
           'password' => 'Dodger36'  // gmail password
            ));

 $mail = $smtp->send($to, $headers, $body);

 if (PEAR::isError($mail)) {
     echo(" < p>" . $mail->getMessage() . " </p > ");
     } else {
     echo("<p > Message successfully sent!</p >");
     }
    exit(0);
?>

