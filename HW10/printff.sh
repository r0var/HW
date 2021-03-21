#!/bin/bash

function findFiles {
  find -type f \( -name "*.png" -o -name "*.sh" \)
}

function findAll {
  find
}

function printHelp {
  echo -e "   --help        Shows help \n \
  --findf       Find .sh and .png files in subdirectories \n \
  --find        Find all files and folders in subdiectories"
}

case $1 in
    --findf) findFiles;;
    --find) findAll;;
    --help) printHelp;;
    *) echo "Try './printff.sh --help' for more information.";;
esac