#!/bin/bash

read -p "Enter the device name (e.g., Monitor_A): " device_name

# Function to generate random heart rate between 40 and 120
generate_heart_rate() {
    echo $((RANDOM % 81 + 40))
(
    while true; do
        timestamp=$(date "+%Y-%m-%d %H:%M:%S")
        heart_rate=$(generate_heart_rate)
        echo "$timestamp $device_name $heart_rate" >> heart_rate_log.txt
        sleep 1
    done
) &
