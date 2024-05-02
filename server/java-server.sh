#!/bin/bash
#!/bin/bash

# Prompt the user to choose between Option 1 and Option 2
echo "Please choose an option:"
echo "1. Vanilla server"
echo "2. Fabric server"
read -p "Enter your choice (1 or 2): " choice

# Check the user's choice and execute the corresponding script
case $choice in
    1)
        echo "Vanilla server installing......."
        mkdir mc 
        cd mc
        wget wget https://raw.githubusercontent.com/GREENFLAME1507/Minecraft-server-in-termux/ver/java-version-selector.sh
        chmod +x java-version-selector.sh
        ./java-version-selector.sh
        clear
        ;;
    2)
        echo "Fabric server installing.........."
        mkdir mc 
        cd mc
        wget wget https://raw.githubusercontent.com/GREENFLAME1507/Minecraft-server-in-termux/ver/fabric-ver-selector.sh
        chmod +x fabric-ver-selector.sh
        ./fabric-ver-selector.sh
        clear
        ;;
    *)
        echo "Invalid choice. Please enter 1 or 2."
        ;;
esac

# Exit the running script
exit
