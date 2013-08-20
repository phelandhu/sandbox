#!/bin/bash

value=`cat response.txt`
#echo "$value"

sed -n "4 s/[0-9]*//p" response.txt |sed -n 's/<session_id>//p'|sed -n 's/<\/session_id>//p'|sed -e 's/^[ \t]*//' > sessionId.txt

