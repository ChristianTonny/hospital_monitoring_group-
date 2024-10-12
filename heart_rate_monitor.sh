#!/bin/bash
# Creating a script that returns heart rate information every second

# Prompt for the device name
echo "Enter the device name (e.g., Monitor_A, Monitor_B):"
read device_name

# Inform the user about the process ID and logging details
echo "Heart rate monitoring started for $device_name. PID: $$"
echo "Data is being logged to heart_rate_log.txt"
echo "To stop the monitoring, use: kill $$"

# Check if the script is already running in the background
if [ "$BACKGROUND" != "true" ]; then
    # Relaunch the script in the background by forking
    BACKGROUND=true nohup "$0" "$device_name" &> /dev/null &
    exit 0
fi

# Function to simulate generating heart rate values
generate_heart_rate() {
    echo $((RANDOM % 40 + 60))  # Random number between 60 and 99
}

# Infinite loop to log heart rate data every second
while true; do
    # Get the current timestamp
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    
    # Generate a random heart rate value
    heart_rate=$(generate_heart_rate)
    
    # Log the timestamp, device name, and heart rate to the log file
    echo "$timestamp $device_name $heart_rate BPM" >> heart_rate_log.txt
    
    # Sleep for 1 second before the next entry
    sleep 1
done
