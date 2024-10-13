#!/bin/bash

# Get the current timestamp of the files
timestamp=$(date +"%Y%m%d_%H%M%S")

# Define the name of the log file currently
log_file="heart_rate_log.txt"

# Elaborate the new archived file name
archived_file="${log_file}_${timestamp}"

# Rename the log file
mv "$log_file" "$archived_file"

echo "Log file archived as: $archived_file"
