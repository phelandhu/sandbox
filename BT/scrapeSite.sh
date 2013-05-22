#!/bin/bash
set -xv
file=file_list.txt
while read filename; do
   echo $filename
#   cmd=wget "http://www.lski.org/pictures/tabletopgaming/BattleTech - MechWarrior - Giga - Play (Rev. 050108)/$filename"
wget "$filename"
#echo $cmd
#   process=`$cmd`
#echo $cmd
#   echo "number of process = $process"
done < $file
