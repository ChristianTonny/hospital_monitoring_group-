#!/bin/bash

echo "Enter the device name (e.g., Monitor_A, Monitor_B):"
read device_name

generate_heart_rate() {
    echo $((RANDOM % 40 + 60))  # Random number between 60 and 99
}
