#!/bin/bash
WAV_DIRECTORY="/home/mbrowne/music/wav"
MP3_DIRECTORY="/home/mbrowne/music/wav"

function recordCD() {
	exit 1;
}

function retrieveMP3Data() {
	exit 1;
}

function writeMP3Data() {
	exit 1;
}

function createArtistAlbumDir() {
	mkdir -p $MP3_DIRECTORY/$1/$2
	exit 1;
}

function moveFiles() {
	mv $WAV_DIRECTORY/ $MP3_DIRECTORY/
	exit 1;
}

MAX_RANGE=1360 #The last line of the playlist should have how many songs are in it
PLAYLISTFILE="/x/playlists/defaultPlayList.txt" #This is the location the the playlist
FILELIST="/x/playlists/musicFileList.txt"


createArtistAlbumDir "rush" "moving_pictures"
