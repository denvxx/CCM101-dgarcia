# Backup Script Guide

## The Backup Script (backup.sh)

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p $BACKUP_DIR

# Compress the source directory into a tarball (.tar.gz)
tar -czf $BACKUP_DIR/backup_$TIMESTAMP.tar.gz $SOURCE_DIR

echo "Backup completed successfully at $TIMESTAMP!"
```

## What Does `chmod +x` Do?

The command `chmod +x backup.sh` adds the execute permission to the file. By default, a new file is only a text file that can be read and written, so Linux refuses to run it and shows "Permission denied". After `chmod +x`, the file is marked as a program, so it can be started with `./backup.sh`. The permissions changed from `-rw-r--r--` to `-rwxr-xr-x`.

## The Cron Expression

```
0 2 * * * /root/backup.sh
```

| Field | Value | Meaning |
|---|---|---|
| Minute | `0` | At minute 0 (the start of the hour) |
| Hour | `2` | At 2 AM (24-hour clock) |
| Day of Month | `*` | Every day of the month |
| Month | `*` | Every month |
| Day of Week | `*` | Every day of the week |

Together, this means the script `/root/backup.sh` runs every night at exactly 2:00 AM.
