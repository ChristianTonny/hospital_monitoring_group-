#!/bin/bash

# Get the current timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Define the log file name
log_file="heart_rate_log.txt"

# Define the new archived file name
archived_file="${log_file}_${timestamp}"

# Rename the log file
mv "$log_file" "$archived_file"

echo "Log file archived as: $archived_file"
