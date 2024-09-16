#!/bin/bash

# Check if brew is installed
if ! command -v brew &> /dev/null
then
    # Install brew if it's not installed
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Done."
fi

# Update brew if it's installed
if command -v brew &> /dev/null
then
    echo "Updating Homebrew..."
    brew update
    echo "Done."
fi

# Determine the OS using uname and grep
OS=$(uname | grep -oE "Darwin" | wc -l)
if [ $OS -eq 1 ]; then
    OS="darwin"
elif [ $(uname | grep -oE "Linux" | wc -l) -eq 1 ]; then
    OS="linux"
else
    echo "Unsupported OS. Exiting..."
    exit 1
fi

# Install dependencies based on the OS
case "$OS" in
    "darwin")
        echo "Mac OS detected."
        brew install -y python3 python3-pip python3-tk
        ;;
    "linux")
        echo "Linux OS detected."
        sudo apt-get update -y
        sudo apt-get install -y python3 python3-pip python3-tk
        ;;
    *)
        echo "Unsupported OS. Exiting..."
        exit 1
        ;;
esac

# Clone the Vengence repository
git clone https://github.com/projectzerodays/Vengence.git

# Change to the Vengence directory
cd Vengence

# Install Dependencies
pip install -r requirements.txt

# Make the Vengence.py script executable
chmod +x Vengence.py

# Run the Vengence.py script
python3 Vengence.py
