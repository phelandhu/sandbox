#!/bin/bash
MAX_RANGE=1360 #The last line of the playlist should have how many songs are in it
PLAYLISTFILE="/x/playlists/defaultPlayList.txt" #This is the location the the playlist
FILELIST="/x/playlists/musicFileList.txt"
function getSongPath(){
	start=$1
	result=$(tail -n +$start $FILELIST | head -n1)
	echo $result
}

rm -f $PLAYLISTFILE #delete the existing file because we will be adding to it in the loop

for i in {1..14}; 
	do
	echo $(getSongPath $((RANDOM%$MAX_RANGE+1))) >> $PLAYLISTFILE

#	n=$((RANDOM%$MAX_RANGE+1)) #Create a random number
#	response=$(getSongPath $n) #Use the random number to find that line in the music list
#	echo $response >> $PLAYLISTFILE #write that line out to the new playlist file on the server.
done
