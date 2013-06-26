#!/bin/bash

function usage(){
	echo "The Proper usage of this is:"
	echo "$0 param"
	echo "With param being one of the following"
	echo "test1"
	echo "test2"
	echo "test3"
	exit 1
}

function test1(){
	echo "Thanks for choosing Test one"
}

function test2(){
	echo "Thanks for choosing Test two"
}

function test3(){
	echo "Thanks for choosing Test three"
}

function every(){
	echo "Hey! You chose one, good"
	echo "You chose "$1
}
# If the para is not set exit out
if [ $# -eq 0 ]
    then usage
    exit
else
	case $1 in
		"test1")
			every "test1"
			test1;;
		"test2")
			every "test2"
			test2;;
		"test3")
			every "test3"
			test3;;
		*) 
			echo "No matching pattern found"
			usage;;
	esac
fi

