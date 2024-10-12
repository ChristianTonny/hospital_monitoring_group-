#!/bin/bash

# Set the group number to 4
GROUP_NUMBER="4"
ARCHIVE_DIR="archived_logs_group$GROUP_NUMBER"
REMOTE_USER="d428dceaebce"
REMOTE_HOST="d428dceaebce.599ec69a.alu-cod.online"
REMOTE_DIR="/hospital_monitoring_group-4/$REMOTE_USER"

# Create the archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Move all archived log files to the archive directory
mv *_archived.log "$ARCHIVE_DIR/"

# Backup the archive directory to the remote server
scp -r "$ARCHIVE_DIR" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"

# Check if the scp command was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Backup failed. Please check your connection and try again."
fi

