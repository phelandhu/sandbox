#!/bin/bash
SOURCE_ROOT="/home/mbrowne/wp"
TARGET_ROOT="/home/www"

function usage(){
	echo "The Proper usage of this is:"
	echo "$0 tag"
	echo "With tag being one of the following"
	echo "trunk"
	echo "2.0.0"
	echo "2.0.1"
	echo "mason"
	exit 1
}

function removeLinks(){
	rm $TARGET_ROOT/wagerplayer
	rm $TARGET_ROOT/wagerplayer_main
	rm $TARGET_ROOT/wagerplayer_r4
	rm $TARGET_ROOT/wagerplayer_tests
}

function createLinks(){
	removeLinks
	ln -s $SOURCE_ROOT/$1/src/main/php/wagerplayer $TARGET_ROOT/wagerplayer
	ln -s $SOURCE_ROOT/$1/src/main/php/wagerplayer_main $TARGET_ROOT/wagerplayer_main
	ln -s $SOURCE_ROOT/$1/src/main/php/wagerplayer_r4 $TARGET_ROOT/wagerplayer_r4
	ln -s $SOURCE_ROOT/$1/src/main/php/wagerplayer_tests $TARGET_ROOT/wagerplayer_tests
	echo "Don't forget to restart memcache"
	# and then kill memcache

#	exit 0
}

function createLinks2(){
	removeLinks
	ln -s $1/wagerplayer $TARGET_ROOT/wagerplayer
	ln -s $1/wagerplayer_main $TARGET_ROOT/wagerplayer_main
	ln -s $1/wagerplayer_r4 $TARGET_ROOT/wagerplayer_r4
	ln -s $1/wagerplayer_tests $TARGET_ROOT/wagerplayer_tests
	echo "Don't forget to restart memcache"
	# and then kill memcache

#	exit 0
}
# If the para is not set exit out
if [ $# -eq 0 ]
    then usage
    exit
else
	case $1 in
		"trunk")
			createLinks "trunk"
			echo "Trunk version running" > $TARGET_ROOT/wpVersion.txt;;
		"2.0.0")
			createLinks "tags/wagerplayer-2.0.0"
			echo "Tag 2.0.0 version running" > $TARGET_ROOT/wpVersion.txt;;
		"2.0.1")
			createLinks "tags/wagerplayer-2.0.1"
			echo "Tag 2.0.1 version running" > $TARGET_ROOT/wpVersion.txt;;
		"mason")
			createLinks2 "/home/wp-repo/main/php"
			echo "Tag 2.0.1 version running" > $TARGET_ROOT/wpVersion.txt;;
		*) 
			echo "No matching pattern found"
			usage;;
	esac
fi

