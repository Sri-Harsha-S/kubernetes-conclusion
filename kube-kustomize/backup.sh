#!/bin/bash

BACKUP_DIR="/home/ubuntu/backups"
TIMESTAMP=$(date +"%Y%m%d%H%M")
BACKUP_FILE="$BACKUP_DIR/etcd-backup-$TIMESTAMP.tar.gz"

mkdir -p $BACKUP_DIR

sudo k3s etcd snapshot save $BACKUP_FILE

echo "Backup completed: $BACKUP_FILE"
