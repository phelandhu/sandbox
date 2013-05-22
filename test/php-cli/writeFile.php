#!/usr/bin/php

<?
$ssh = ssh2_connect('127.0.0.1', 22);

ssh2_auth_password($ssh, 'mbrowne', 'Br0wne36');

$stream = ssh2_exec($ssh, 'touch testing.txt');

?>
