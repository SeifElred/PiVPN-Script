#!/bin/bash

# Prompt for the desired username
read -p "Enter the desired username for the VPN: " username

# Create VPN user
pivpn -a -n "$username"

# Get the QR code for the user
pivpn -qr

# Kill existing processes if running
pkill -f "python3 -m http.server --bind 127.0.0.1 8080"
sudo pkill tor

# Start the necessary processes
cd /home/ubuntu/tor_service/
python3 -m http.server --bind 127.0.0.1 8080 &
sudo tor &

# Copy the recent two .conf files to tor_services folder
cd /home/ubuntu/configs/
recent_files=$(ls -t *.conf | head -n 2)
cp $recent_files /home/ubuntu/tor_service/
