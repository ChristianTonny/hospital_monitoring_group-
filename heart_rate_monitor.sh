#!/bin/bash

# Script Name: heart_rate_monitor.sh
# Description: Logs heart rate data every second with timestamp and device name

# Function to generate a random heart rate
generate_heart_rate() {
  echo $((60 + RANDOM % 40))  # Simulates heart rate between 60 and 100 bpm
}

# Prompt the user for the device name
echo "Enter the device name (e.g., Monitor_A, Monitor_B, etc.):"
read device_name

# Notify user that logging will begin
echo "Starting heart rate monitoring for $device_name..."
echo "Log file: heart_rate_log.txt"

# Record the PID of the process
echo "Process ID (PID): $$"

# Infinite loop to log heart rate data every second
while true; do
  # Get the current timestamp
  timestamp=$(date '+%Y-%m-%d %H:%M:%S')

  # Generate a simulated heart rate
  heart_rate=$(generate_heart_rate)

  # Append data to the log file
  echo "$timestamp | Device: $device_name | Heart Rate: $heart_rate bpm" >> heart_rate_log.txt

  # Wait for 1 second before the next iteration
  sleep 1
done

