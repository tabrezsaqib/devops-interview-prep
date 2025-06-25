#!/bin/bash
set -euo pipefail

LOG_DIR="/var/log/myapp"
BACKUP_DIR="/tmp/log_backup"
S3_BUCKET="s3://myapp-log-backups"
DATE=$(date +%Y-%m-%d)

mkdir -p "$BACKUP_DIR"

echo "Finding logs older than 30 days in $LOG_DIR..."
find "$LOG_DIR" -type f -mtime +30 -name "*.log" | while read -r logfile; do
  echo "Processing $logfile"
  basefile=$(basename "$logfile")
  tarball="$BACKUP_DIR/${basefile}.${DATE}.tar.gz"
  
  # Compress the log file
  tar -czf "$tarball" -C "$(dirname "$logfile")" "$basefile"
  
  # Upload to S3
  echo "Uploading $tarball to $S3_BUCKET"
  aws s3 cp "$tarball" "$S3_BUCKET/"
  
  # Optionally, delete or archive original log file after backup
  # rm "$logfile"
done

echo "Backup completed successfully."