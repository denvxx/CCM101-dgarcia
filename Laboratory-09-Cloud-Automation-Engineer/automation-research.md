# Automation Research

## Bash Script
A Bash script is a text file that contains a list of Linux commands, which the system runs one after another. It lets us save a task once and run it again whenever we need it, instead of typing every command by hand. The `#!/bin/bash` line at the top is called the shebang, and it tells Linux to use the Bash program to read and run the file.

## Variables
A variable is a name that stores a value, such as `BACKUP_DIR` holding the folder name `backups`. Programmers use variables because the value is written in only one place, so if the folder changes, we only fix one line instead of every line that uses it. This also makes the script easier to read and less likely to have typing mistakes.

## Cron Job
A cron job is a task that Linux runs automatically at a time that we set, using a schedule written in a file called the crontab. It is essential for cloud operations because jobs such as backups, updates, and clean-ups must run regularly, even at night when nobody is working. With cron, these jobs happen on time without a person having to remember them.
