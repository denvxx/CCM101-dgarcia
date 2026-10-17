# Laboratory 9 - The Cloud Automation Engineer

## Mission Overview
After my work on cloud security, I joined the Cloud Automation and DevOps Team at CloudNova Technologies. A client's IT staff kept forgetting to back up their application data, and one missed backup caused a permanent loss of customer files. My task was to remove the human error from this process. I created a dummy application folder, wrote a Bash script that compresses and backs it up, tested the script, and set up a cron schedule so the backup runs every night at 2:00 AM without anyone pressing a button.

## Objectives
- Understand the fundamental syntax of a Bash shell script, including variables and basic commands.
- Use a command-line text editor (nano) to write and save executable scripts.
- Modify Linux file permissions using the chmod command.
- Understand task scheduling and the syntax of a Linux crontab.
- Document automation code and Cron job configurations using Markdown.
- Complete the final chapter of my GitHub Cloud Computing Portfolio.

## Commands Executed

| Command | Purpose |
|---|---|
| `mkdir app-data` | Created the dummy application folder. |
| `echo "This is critical client data." > app-data/data.txt` | Created a test file inside the folder to represent client data. |
| `nano backup.sh` | Opened the nano editor to write the backup script. |
| `cat backup.sh` | Displayed the script to check that it was saved correctly. |
| `./backup.sh` | Ran the script (it failed with "Permission denied" the first time). |
| `chmod +x backup.sh` | Gave the script permission to be executed. |
| `ls -l backups/` | Listed the backup folder to confirm the .tar.gz file was created. |
| `crontab -l` | Listed the current cron jobs. |
| `env EDITOR=nano crontab -e` | Opened the cron table in nano to add the schedule. |

## Skills Learned
- Writing a Bash script that uses variables, a timestamp, and the tar command.
- Understanding what the shebang line `#!/bin/bash` does.
- Changing file permissions with chmod so a script can run.
- Creating and compressing backups automatically with `tar -czf`.
- Reading and writing a cron expression with its five time fields.
- Scheduling a task so it runs by itself every night.
- Documenting scripts and schedules clearly using Markdown.
