#!/bin/bash

cleanup() {
  echo "Cleaning up temp files..."
  rm -f /tmp/mytempfile
}

trap cleanup EXIT
trap "echo 'Interrupted!'; exit 1" SIGINT

echo "Running..."
sleep 60