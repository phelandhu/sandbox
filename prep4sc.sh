#!/bin/bash
MAX_VALUE=16240
#MAX_VALUE=8000
FIND="."
REP=""
sum=$(du -s)
test=${sum%$FIND}$REP
function gitToRepo() {
	git add .;
	git commit -m "$1";
	git push;
}
if [[ $test -ge $MAX_VALUE ]]
then
    read -p "This folder is over the size for normal repo submission are you sure you want to add and push (Y/N)" yn
    case $yn in
        [Yy]* ) gitToRepo $1;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
else
	echo "Folder will be added to git source.";
	gitToRepo $1
fi

