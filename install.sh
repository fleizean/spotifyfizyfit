#!/bin/bash

# Determine the operating system
OS="$(uname -s)"

# Install dependencies based on the operating system
case "$OS" in
    Linux*)
        echo "Detected Linux OS"
        sudo apt-get update
        sudo apt-get install -y python3 python3-pip
        ;;
    Darwin*)
        echo "Detected macOS"
        brew update
        brew install python3
        ;;
    *)
        echo "Unsupported OS: $OS"
        exit 1
        ;;
esac

# Install Python dependencies
pip3 install -r requirements.txt

# Print completion message in color
echo -e "\033[0;32mInstallation complete!\033[0m"

# Provide example commands to run the script
echo -e "\033[0;33mYou can run the script using one of the following commands:\033[0m"
echo -e "\033[0;34m1. pip3 install spotifyfizyfit && spotifyfizyfit --config /path/to/your/config.json\033[0m"
echo -e "\033[0;34m2. pip3 install dist/spotifyfizyfit.whl && spotifyfizyfit --config /path/to/your/config.json\033[0m"
echo -e "\033[0;34m3. python3 src/runner.py --config /path/to/your/config.json\033[0m"

# Prompt user to select an option
echo -e "\033[0;33mPlease select an option to proceed:\033[0m"
echo -e "\033[0;34m1. Install with pip3\033[0m"
echo -e "\033[0;34m2. Install from dist directory\033[0m"
echo -e "\033[0;34m3. Run runner.py directly\033[0m"

read -p "Enter your choice: " choice

case "$choice" in
    "1")
        echo -e "\033[0;32mExample command: pip3 install spotifyfizyfit && spotifyfizyfit --config /path/to/your/spotify-playlist-config.json\033[0m"
        ;;
    "2")
        echo -e "\033[0;32mExample command: pip3 install dist/spotifyfizyfit.whl --force-reinstall && spotifyfizyfit --config /path/to/your/spotify-playlist-config.json\033[0m"
        ;;
    "3")
        echo -e "\033[0;32mExample command: python3 src/runner.py --config /path/to/your/spotify-playlist-config.json\033[0m"
        ;;
    *)
        echo -e "\033[0;31mInvalid choice. Exiting.\033[0m"
        exit 1
        ;;
esac