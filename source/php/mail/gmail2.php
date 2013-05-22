#!/usr/bin/php
<?php
/***********************************************
* Created:            Fri 22 Feb 2013 03:57:04 PM PST 
* Last Modified:      Fri 22 Feb 2013 03:57:04 PM PST
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

