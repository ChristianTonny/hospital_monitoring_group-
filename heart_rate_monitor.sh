#!/bin/bash

read -p "Enter the device name (e.g., Monitor_A): " device_name

# Function to generate random heart rate between 40 and 120
generate_heart_rate() {
    echo $((RANDOM % 81 + 40))
}
