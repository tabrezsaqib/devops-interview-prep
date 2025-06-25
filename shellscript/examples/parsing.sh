#!/bin/bash

filename=""
verbose=0

while getopts ":f:v" opt; do
  case ${opt} in
    f)
      filename=$OPTARG
      ;;
    v)
      verbose=1
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2; exit 1
      ;;
  esac
done

echo "File: $filename"
[[ $verbose -eq 1 ]] && echo "Verbose mode on"