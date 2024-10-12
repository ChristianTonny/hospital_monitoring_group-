#!/bin/bash

echo "Enter the device name (e.g., Monitor_A, Monitor_B):"
read device_name

generate_heart_rate() {
    echo $((RANDOM % 40 + 60))  # Random number between 60 and 99
}

echo "Heart rate monitoring started for $device_name. PID: $$"
echo "Data is being logged to heart_rate_log.txt"
echo "To stop the monitoring, use: kill $$"

while true; do
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    heart_rate=$(generate_heart_rate)
    echo "$timestamp $device_name $heart_rate" >> heart_rate_log.txt
    sleep 1
done
