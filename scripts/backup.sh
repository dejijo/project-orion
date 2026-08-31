#!/bin/bash
SOURCE_DIR="$1"
BACKUP_DIR=~/project-orion/backups
mkdir -p "$BACKUP_DIR"

if [ -z "$SOURCE_DIR" ]; then
  echo "Usage: $0 <directory-to-backup>"
  exit 1
fi

TIMESTAMP=$(date +%F_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

echo "Backup created: $BACKUP_FILE"
