#!/bin/bash
# CloudNova Technologies - Automated Database Backup and Rotation
# Backs up the WordPress MariaDB database and removes backups older than 7 days.

set -o pipefail

DB_CONTAINER="cloudnova-db"
BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/db_backup_$TIMESTAMP.sql.gz"
RETENTION_DAYS=7

echo "[$(date)] Starting database backup..."
mkdir -p "$BACKUP_DIR"

if docker exec "$DB_CONTAINER" sh -c 'exec mariadb-dump -uroot -p"$MYSQL_ROOT_PASSWORD" --all-databases' | gzip > "$BACKUP_FILE"; then
    echo "[$(date)] Backup completed: $BACKUP_FILE"
else
    echo "[$(date)] ERROR: Backup failed!"
    rm -f "$BACKUP_FILE"
    exit 1
fi

find "$BACKUP_DIR" -name "db_backup_*.sql.gz" -type f -mtime +$RETENTION_DAYS -delete
echo "[$(date)] Backups older than $RETENTION_DAYS days removed."