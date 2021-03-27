#!/bin/bash

CASE=$1
DIR=$2
FTYPE="*.png *.sh"

function findFiles {
  if [ ! -z "$1" ]; then
    COMMAND="find $DIR -type f \("  
    args=("$@")
    ELEMENTS=${#args[@]}
    for (( i=0;i<$ELEMENTS-1;i++ )); do
      COMMAND+=" -name \"${args[${i}]}\" -o"
    done
    COMMAND+=" -name \"${args[$ELEMENTS-1]}\" \)"
    eval "$COMMAND"
  fi
}

case $CASE in
    --findf) findFiles $FTYPE;;
    --find) find $FOLD;;
esac
