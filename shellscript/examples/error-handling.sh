#!/bin/bash
set -euo pipefail
trap 'echo "ERROR on line $LINENO"; exit 1' ERR
trap 'rm -f "$TMPFILE"' EXIT

LOG_DIR="/var/log"
TMPFILE=$(mktemp)
NOW=$(date +%F)

for log in "$LOG_DIR"/*.log; do
  [[ -f "$log" ]] || continue  # skip if none
  echo "Backing up $log"
  gzip -c "$log" > "$TMPFILE"
  aws s3 cp "$TMPFILE" "s3://my-bucket/$(basename "$log")-$NOW.gz"
done