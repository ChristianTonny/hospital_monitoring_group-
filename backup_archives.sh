#!/bin/bash

#make 4 the group number
GROUP_NUMBER="4"
ARCHIVE_DIR="archived_logs_group$GROUP_NUMBER"
REMOTE_USER="d428dceaebce"
REMOTE_HOST="d428dceaebce.599ec69a.alu-cod.online"
REMOTE_DIR="/hospital_monitoring_group-4/$REMOTE_USER"

#if the archive directory doesn't already exist, create it.
mkdir -p "$ARCHIVE_DIR"

#Move all archived log files to the archive directory
find . -name "*_log.txt_*" -type f -exec mv {} "$ARCHIVE_DIR/" \;


#Backup the archive directory to the remote server
scp -r "$ARCHIVE_DIR" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"

#Check if the scp command was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Backup failed. Please check your connection and try again."
fi

