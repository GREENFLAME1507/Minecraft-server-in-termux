#!/bin/bash

# Function to perform the installation
install() {
echo "Installing......."
        chmod +x Packages.sh
        ./Packages.sh
        clear 
         


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
