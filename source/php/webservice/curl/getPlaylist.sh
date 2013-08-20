#!/bin/bash
server=`cat server.txt`
file=response.txt
# so the next two lines creates a random file name and then assigns it a path, I didn't use it here, but I don't want to look it up again.
myfile=`date +%s | sha256sum | base64 | head -c 32 ; echo`
mypath=/tmp/$myfile
un='9638@m'	#username
pw='a1234567'	#password
tn='500700'	#terminalname
minimumsize=310
action='playlist_retrieve'

#request='http://'$server'/admin/wapi1.php?action='$action$cantorInfo'&username='$un'&password='$pw'&terminal_name='$tn
request='http://sandbox/sandbox/source/php/webservice/playlist.php?user=1&num=3'
echo $request
curl --request GET $request > $file

actualsize=$(du -b "$file" | cut -f 1)
if [ $actualsize -ge $minimumsize ]; then
    sed -n "4 s/[0-9]*//p" $file |sed -n 's/<session_id>//p'|sed -n 's/<\/session_id>//p'|sed -e 's/^[ \t]*//' > sessionId.txt

else
    errorMessage=`sed -n "5 s/[0-9]*//p" $file |sed -n 's/<error_text>//p'|sed -n 's/<\/error_text>//p'|sed -e 's/^[ \t]*//'`
    echo "Server returned an error: " $errorMessage
fi


