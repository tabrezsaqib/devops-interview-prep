#!/bin/bash
set -euo pipefail
trap 'echo "Script failed on line $LINENO"; exit 1' ERR

LOG_DIR="/var/log"
S3_BUCKET="s3://my-prod-logs"
TMP_DIR="/tmp/log_backup"
NOW=$(date +"%Y-%m-%d_%H-%M")

mkdir -p "$TMP_DIR"

# Find and compress logs
find "$LOG_DIR" -type f -mtime +30 -print0 | while IFS= read -r -d '' logfile; do
  tarfile="${TMP_DIR}/$(basename "$logfile")_${NOW}.tar.gz"
  echo "Compressing $logfile to $tarfile"
  tar -czf "$tarfile" "$logfile"
  aws s3 cp "$tarfile" "$S3_BUCKET/"
done

echo "Backup complete"