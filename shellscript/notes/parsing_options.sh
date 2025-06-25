#!/bin/bash

while getopts ":u:p:v" opt; do
  case $opt in
    u)
      username="$OPTARG"
      echo "Username: $username"
      ;;
    p)
      password="$OPTARG"
      echo "Password: $password"
      ;;
    v)
      verbose=true
      echo "Verbose mode enabled"
      ;;
    \?)
      echo "Invalid option: -$OPTARG"
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument."
      exit 1
      ;;
  esac
done