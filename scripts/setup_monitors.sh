#!/bin/bash

# Monitor setup script for i3
# This ensures reliable monitor configuration on startup/restart

# Wait for X server to be ready
sleep 2

# Set up monitors with proper scaling and positioning
xrandr \
  --output DP-4 --mode 3840x2160 --scale 1.2x1.2 --rate 119.88 --primary --pos 0x0 \
  --output HDMI-1 --mode 1920x1080 --scale 2x2 --rate 100.00 --rotate right --pos 4608x0

# Log the result for debugging
echo "$(date): Monitor setup executed" >> ~/.config/i3/monitor_setup.log
xrandr >> ~/.config/i3/monitor_setup.log 2>&1