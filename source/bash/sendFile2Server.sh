#!/bin/bash
#PREPATH="/home/mbrowne/workshop/sandbox/"
PREPATH="/home/mbrowne/wp/trunk/src/main/php"
printf "\x1b\x5b1;32;40m"
function usage(){
	printf "The Proper usage is:\n"
	printf "$0 \x1b\x5b1;31;40mfile server\x1b\x5b1;32;40m\n"
	printf "With '\x1b\x5b1;31;40mfile\x1b\x5b1;32;40m' being the file you want to upload to the server\n"
	printf "With '\x1b\x5b1;34;40mserver\x1b\x5b1;32;40m' being the server you want to upload the file to\n"
	showServerList
	exit 1
}

function showServerList() {
	printf "\x1b\x5b1;34;40mQAAdmin\x1b\x5b1;32;40m - QA Admin server - Back Office\n"
	printf "\x1b\x5b1;34;40mQABet\x1b\x5b1;32;40m - QA Bet web server - APIs\n"
	printf "\x1b\x5b1;34;40mStageAdmin\x1b\x5b1;32;40m - Stage Admin server - Back Office\n"
	printf "\x1b\x5b1;34;40mStageBet\x1b\x5b1;32;40m - Stage Bet web server - APIs\n"
}


function getPathFromFile() {
	filePath=$(readlink -f $1)
	file=${filePath:${#PREPATH}+1}
	echo $file
}

function copyToServer() {
	scp "$1" www@"$2":/export/home/www/$3
#	echo $command
#	scp $1 www@$2:/export/home/www/$path/$1
}

function serverName() {
	case $1 in
		"QAAdmin")
			echo "lvcgsbadmweb-zq11";;
		"QABet")
			echo "lvcgsbbetweb-zq11";;
		"StageAdmin")
			echo "lvcgsbadmweb-zq21";;
		"StageBet")
			echo "lvcgsbbetweb-zq21";;
		*) 
			echo "No matching pattern found"
			usage;;
	esac
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

# QAAdmin - lvcgsbadmweb-zq11
# QABet - lvcgsbbetweb-zq11
# StageAdmin - lvcgsbadmweb-zq21
# StageBet - lvcgsbbetweb-zq21

#echo "Variable count is: "$#
# looks to make sure that there are at least two parameters.
# If the para is not set exit out
if [[ $# -lt 2 ]] # make sure there is at least two variables
# if not stop and display usage
then 
	echo "Not enough variables"
	usage
	exit
else
	if [[ $# -gt 2 ]] # but not 3, three is too far.
	then
		echo "Too many variables"
		usage
		exit
	else
		if [ -f $1 ]
		then
			path=$(getPathFromFile "$1")
			server=$(serverName "$2")
			copyToServer "$1" "$server" "$path"
		fi
	fi
fi

