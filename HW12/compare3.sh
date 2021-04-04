#!/bin/bash

echo "Enter the A number"
read FIRST
echo "Enter the B number"
read SECOND
echo "Enter the C number"
read THIRD

function numCheck {
RE='^[0-9]+([.][0-9]+)?$'
if ! [[ $1 =~ $RE ]] ; then
   echo "error: $1 not a number" >&2; exit 1
fi
}

numCheck $FIRST
numCheck $SECOND
numCheck $THIRD

function compareNumbers {
  if [[ $1 > $2 ]]; then
    RESULT+="$3 is greater than $4 "
  elif [[ $1 == $2 ]]; then
    RESULT+="$3 and ${4:0:1} are equal, "
  else
    RESULT+="$3 is less than $4 "
  fi
}

compareNumbers $FIRST $SECOND A B,
compareNumbers $FIRST $THIRD A C,
compareNumbers $SECOND $THIRD B C

LEN="${#RESULT}"
if [[ "${RESULT:$LEN-2:1}" == "," ]]; then
    echo $RESULT | rev | cut -d"," -f2- | rev
  else 
    echo $RESULT
fi
