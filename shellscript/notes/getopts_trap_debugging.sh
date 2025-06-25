#!/bin/bash
set -euo pipefail

usage() {
  echo "Usage: $0 -f <filename> [-v]"
  exit 1
}

verbose=false

trap 'echo "Error on line $LINENO. Exiting."; exit 1' ERR

while getopts ":f:v" opt; do
  case $opt in
    f)
      filename="$OPTARG"
      ;;
    v)
      verbose=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG"
      usage
      ;;
    :)
      echo "Option -$OPTARG requires an argument."
      usage
      ;;
  esac
done

if [ -z "${filename:-}" ]; then
  echo "Filename is required."
  usage
fi

if $verbose; then
  set -x
fi

if [ ! -f "$filename" ]; then
  echo "File $filename does not exist."
  exit 2
fi

echo "Processing file: $filename"
# Add processing logic here

if $verbose; then
  set +x
fi

echo "Script completed successfully."