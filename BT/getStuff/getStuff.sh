#!/bin/bash
basePath="~/temp/"
basePath=`eval "echo $basePath"`
logFile="/var/log/myLog/scriptedDownloads.log"
export filecount=0
for file in /tmp/fileList/*.lst
do
    #get the file names and make directories based on them
    filename=$(basename "$file")
    filename="${filename%.*}"
    mkdir -p $basePath$filename
    filecount=0
    while read remoteFilename; do
	localFilename=$(basename "$remoteFilename")
	wget -a /var/log/myLog/scriptedDownloads.log "$remoteFilename" -O "$basePath$filename/$localFilename"
	((filecount++))
	message="File $filecount finished downloading"
	echo $message
	echo $message >> $logFile
    done < $file
    rm $file
	
done

