#!/bin/bash
sessionID=`cat sessionId.txt`
server=`cat server.txt`
cantorInfo='&wapi_client_user=cantor&wapi_client_pass=977f4f740a9fe91de93a6ce06a156920'
action='card_place_bet'

request='http://'$server'/admin/wapi1.php?action='$action'&session_id='$sessionID$cantorInfo
echo $request
curl --request GET $request
