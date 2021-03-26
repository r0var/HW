#!/bin/bash

FOLD=$2
FTYPE1="*.png"
FTYPE2="*.sh"

function findFiles {
  find $FOLD -type f \( -name "$FTYPE1" -o -name "$FTYPE2" \)
}

function printHelp {
  echo -e "   --help                  Shows help \n \
  --findf [PATH]          Find .sh and .png files in subdirectories \n \
  --find [PATH]           Find all files and folders in subdiectories"
}

case $1 in
    --findf) findFiles;;
    --find) find $FOLD;;
    --help) printHelp;;
    *) echo "Try './printff.sh --help' for more information.";;
esac
