#!/bin/bash

FIRST=$1
SECOND=$2
THIRD=$3

RE='^(-?([0-9]{1,6}|10{6})|one|two|three)$'

function checkString {
  if ! [ $# -eq 0 ]; then
    if [[ $1 =~ $RE ]]; then
        :
      else
        echo "error: $1 is wrong argument"
    fi
  fi
}

checkString $FIRST
checkString $SECOND
checkString $THIRD
