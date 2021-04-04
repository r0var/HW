#!/bin/bash

echo "Enter the first number"
read FIRST
echo "Enter the second number"
read SECOND


function numCheck {
re='^[0-9]+([.][0-9]+)?$'
if ! [[ $1 =~ $re ]] ; then
   echo "error: $1 not a number" >&2; exit 1
fi
}

numCheck $FIRST
numCheck $SECOND

function compareNumbers {
  if [[ $1 > $2 ]]; then
    echo $1 is greater than $2
  elif [[ $1 == $2 ]]; then
    echo $1 and $2 are equal
  else
    echo $1 is less than $2
  fi
}

compareNumbers $FIRST $SECOND
