#!/usr/bin/php
<?php

	$ssh = ssh2_connect('127.0.0.1', 22);
	ssh2_auth_password($ssh, 'mbrowne', 'Br0wne36');
	$stream = ssh2_exec($ssh, '/sbin/ifconfig');
	stream_set_blocking($stream, true);

	$response = '';
	while($buffer = fread($stream, 4096)) {
		$response .= $buffer;
	}

	fclose($stream);
	echo $response;

?>
