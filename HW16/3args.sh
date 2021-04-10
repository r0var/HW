#!/bin/bash

FIRST=$1
SECOND=$2
THIRD=$3

array=(one two three)
RE='^[+-]?[0-9]+([.][0-9]+)?$'

function checkString {
  if ! [ $# -eq 0 ]; then
    if [[ " ${array[@]} " =~ " ${1} " ]] || [[ $1 =~ $RE ]] && (( $1 >= -1000000 && $1 <= 1000000)); then
        :
      else
        echo "error: $1 is wrong argument"
    fi
  fi
}

checkString $FIRST
checkString $SECOND
checkString $THIRD
