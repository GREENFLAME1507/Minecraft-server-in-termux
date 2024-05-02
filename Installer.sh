#!/bin/bash

# Function to perform the installation
install() {
    # Add your installation steps here
    echo "Performing installation..."
    # Prompt the user to choose between Option 1 and Option 2
echo "Please choose an option:"
echo "1. Install recommended os"
echo "2. Don't Install os"
read -p "Enter your choice (1 or 2): " choice

# Check the user's choice and execute the corresponding script
case $choice in
    1)
        echo "Installing ubuntu......."
        git clone https://github.com/GREENFLAME1507/Minecraft-server-in-termux.git
        cd Minecraft-server-in-termux
        cd os
        chmod +x ubuntu.sh
        ./ubuntu.sh
        clear 
        exit 
        ;;
    2)
        echo "It is recommende to install the provided os !"
        echo "anyway moving on "
        cd Minecraft-server-in-termux
        chmod +x packages.sh
        ./packages.sh
        ;;
    *)
        echo "Invalid choice. Please enter 1 or 2."
        ;;
esac

# Exit the running script
exit
    
    echo "Installation complete."
}

# Main menu
echo "-------------------------"
echo "|Welcome to the Installer|"
echo "-------------------------"
echo "1. Install"
echo "2. Exit"
read -p "Enter your choice: " choice

case $choice in
    1)
        install
        ;;
    2)
        echo "Exiting installer........."
        exit
        ;;
    *)
        echo "Invalid choice. Please enter 1 or 2."
        ;;
esac
