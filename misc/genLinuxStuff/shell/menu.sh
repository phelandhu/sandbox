#!/bin/bash
# http://askubuntu.com/questions/1705/how-can-i-create-a-select-menu-in-a-shell-script
PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "you chose choice 1"
            ;;
        "Option 2")
            echo "you chose choice 2"
            ;;
        "Option 3")
            echo "you chose choice 3"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
