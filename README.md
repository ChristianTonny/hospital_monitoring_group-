![Shell](https://img.shields.io/badge/Shell-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

# Heart Rate Monitoring and Log Management System

<div align="center">

![Heartbeat Animation](https://media.giphy.com/media/l0HlBO7eyXzSZkJri/giphy.gif)

</div>

## Task 1: Heart Rate Monitoring Script
**Contributors:** Tonny Christian & Ariane

**Script Name:** `heart_rate_monitor.sh`

**Description:** This script captures heart rate data every second. It prompts for a device name (e.g., "Monitor_A") and records data into `heart_rate_log.txt`. The log includes timestamp, device name, and simulated heart rate. The script runs in the background, displaying its PID for management.

## Task 2: Log Archival Script
**Contributors:** Larissa & Noel

**Script Name:** `archive_log.sh`

**Description:** This script archives the `heart_rate_log.txt` file by renaming it with a timestamp in the format `heart_rate_log.txt_YYYYMMDD_HHMMSS`.

## Task 3: Archival and Backup Script
**Contributors:** Alice & James

**Script Name:** `backup_archives.sh`

**Description:** This script transfers archived log files to the `archived_logs_group4` directory and creates a backup on a remote server using SSH and SCP.

## Git Commands Used

- `git add`: Stage changes for commit
- `git commit`: Create a new commit with staged changes
- `git rebase`: Reapply commits on top of another base tip
- `git pull --rebase origin <default-branch>`: Fetch and rebase changes from the remote
- `git log`: View commit history
- `git stash`: Temporarily store modified tracked files
- `git commit --amend`: Modify the most recent commit

<div align="center">

![Git Animation](https://media.giphy.com/media/kH6CqYiquZawmU1HI6/giphy.gif)

</div>
