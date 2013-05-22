<?php
// settings.php
/***********************************************
* Created:            Apr 16, 2013 11:49:58 AM
* Last Modified:      Apr 16, 2013 11:49:58 AM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
* http://www.linkedin.com/groupAnswers?viewQuestionAndAnswers=&discussionID=231749468&gid=1915642&trk=eml-anet_dig-b_nd-pst_ttle-cn&ut=2Wg-PhHUp0rlI1
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
require_once("../bootstrap.php");
require_once("mysqldatabase.class.php");
require_once("settings.class.php");

$database = new MySqlDatabase(DB_SERVER, DB_SERVER_USERNAME, DB_SERVER_PASSWORD, DB_DATABASE);

$settings = new settings($database);

echo $settings->getSetting("NAME");
print_r($settings->listSettings());
print_r($settings->listSettingsNames());