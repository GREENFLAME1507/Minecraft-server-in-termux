#!/bin/bash

# Prompt the user to choose between Option 1 and Option 2
echo "select the version you wnt to install :"
echo "1. 1.20.4"
echo "2. 1.20.5"
read -p "Enter your choice (1 or 2): " choice

# Check the user's choice and execute the corresponding script
case $choice in
    1)
        echo "installing 1.20.4......."
        cd
        mkdir mc
        cd mc
        wget "https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar"
        java -jar server.jar
        stop
        clear
        echo "run the following command to start the server"
        echo "java -Xmx1G -Xms3G -jar minecraft_server.1.20.4.jar nogui"
        ;;
    2)
        echo "installing 1.20.5........"
        cd
        mkdir mc
        cd mc
        wget "https://piston-data.mojang.com/v1/objects/79493072f65e17243fd36a699c9a96b4381feb91/server.jar"
        java -jar server.jar
        stop
        clear
        echo "run the following command to start the server"
        echo "java -Xmx1G -Xms3G -jar minecraft_server.1.20.5.jar nogui"
        ;;
    *)
        echo "Invalid choice. Please enter 1 or 2."
        ;;
esac

# Exit the running script
exit
