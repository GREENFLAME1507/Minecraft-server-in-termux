#!/bin/bash

# Prompt the user to choose between Option 1 and Option 2
echo "Please choose an option:"
echo "1. Install recommended os"
echo "2. Don't Install os"
read -p "Enter your choice (1 or 2): " choice

# Check the user's choice and execute the corresponding script
case $choice in
    1)
        echo "Innstalling ubuntu......."
        wget https://raw.githubusercontent.com/GREENFLAME1507/Minecraft-server-in-termux/os/ubuntu.sh
        chmod +x ubuntu.sh
        ./ubuntu.sh
        clear 
        echo "Run the following command within ubuntu install"
        echo "wget https://raw.githubusercontent.com/GREENFLAME1507/Minecraft-server-in-termux/packages.sh"
        echo "and run "./packages.sh""
        exit 
        ;;
    2)
        echo "It is recommende to install the provided os !"
        echo "anyway moving on "
        wget https://raw.githubusercontent.com/GREENFLAME1507/Minecraft-server-in-termux/packages.sh
        chmod +x packages.sh
        ./packages.sh
        ;;
    *)
        echo "Invalid choice. Please enter 1 or 2."
        ;;
esac

# Exit the running script
exit
