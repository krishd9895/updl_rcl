#!/bin/sh

# Exit immediately if any command fails
set -e

echo "Installing Rclone..."
curl -fsSL https://rclone.org/install.sh | bash
echo "Rclone installation completed."

# Run the Python script
echo "Starting main.py..."
python3 main.py
