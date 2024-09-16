#!/bin/bash

# Check if brew is installed
if ! command -v brew &> /dev/null
then
    # Install brew if it's not installed
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &> /dev/null
    echo "Done."
fi

# Update brew if it's installed
if command -v brew &> /dev/null
then
    echo "Updating Homebrew..."
    brew update &> /dev/null
    brew upgrade &> /dev/null
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
        brew install python3 python3-tk &> /dev/null
        
        # Check if the directory exists and create it if it doesn't
        DIRECTORY="/private/tmp"
        if [ ! -d "$DIRECTORY" ]; then
            echo "Creating directory $DIRECTORY..."
            sudo mkdir "$DIRECTORY"
            defaults write com.apple.systempreferences TemporaryDirectory "$DIRECTORY"
            echo "Directory $DIRECTORY created and system preference set."
        else
            echo "Directory $DIRECTORY already exists."
        fi
        ;;
    "linux")
        echo "Linux OS detected."
        sudo apt-get update -y  &> /dev/null
        sudo apt-get install -y python3 python3-pip python3-tk &> /dev/null
        ;;
    *)
        echo "Unsupported OS. Exiting..."
        exit 1
        ;;
esac

# Clone the Vengence repository
git clone https://github.com/projectzerodays/Vengence.git &> /dev/null

# Change to the Vengence directory
cd Vengence &> /dev/null

# Install Dependencies
pip install -r requirements.txt 

# Make the Vengence.py script executable
chmod +x Vengence.py &> /dev/null

# Run the Vengence.py script
python3 Vengence.py
