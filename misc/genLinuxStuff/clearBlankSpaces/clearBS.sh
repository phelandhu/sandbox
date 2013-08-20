#!/bin/bash

#look to see if there is a second variable
if [[ -z "$2" ]]; then
  #if not then make the output equal to out.txt
  OUTPUT=out.txt
else
  OUTPUT=$2
fi

# look to see if there is a first variable
if [[ -z "$1" ]]; then
#blah
  INPUT=test.txt
else 
  INPUT=$1
fi

if [ $# -gt 0 ]; then
  echo \$1 is set
else
  echo \$1 is not set
fi

awk '{$1=$1}{ print }' $INPUT > $OUTPUT+awk
perl -lape 's/\s+//sg' $INPUT > $OUTPUT+perl
sed -e 's/^[ \t]*//' -e 's/[ \t]*$//' $INPUT > $OUTPUT+sed
