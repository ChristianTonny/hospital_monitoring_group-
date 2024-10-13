#!/bin/bash

# Get the current real timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")
# Define the log specifaclly  file name
log_file="heart_rate_log.txt"
# Define the new archived file name
archived_file="${log_file}_${timestamp}"
# Rename the log file
if mv "$log_file" "$archived_file"; then
    echo "Log file archived as: $archived_file"
else
    echo "Error: Failed to archive log file" >&2
    exit 1
fi	
