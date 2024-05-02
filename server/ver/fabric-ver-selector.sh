#!/bin/bash

# Prompt the user to choose between Option 1 and Option 2
echo "select the version you wnt to install :"
echo "1. 1.20.5"
echo "2. 1.20.4"
read -p "Enter your choice (1 or 2): " choice

# Check the user's choice and execute the corresponding script
case $choice in
    1)
        echo "installing 1.20.5......."
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.20.5/0.15.10/1.0.1/server/jar
        mv fabric-server-mc.1.20.5-loader.0.15.10-launcher.1.0.1.jar server.jar
        java -jar server.jar
        stop
        clear
        echo "run the following command to start the server"
        echo "java -Xmx3G -jar server.jar nogui"
        ;;
    2)
        echo "installing 1.20.5........"
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.20.4/0.15.10/1.0.1/server/jar
        mv fabric-server-mc.1.20.4-loader.0.15.10-launcher.1.0.1.jar server.jar
        java -jar server.jar
        stop
        clear
        echo "run the following command to start the server"
        echo "java -Xmx3G -jar server.jar nogui"
        ;;
    *)
        echo "Invalid choice. Please enter 1 or 2."
        ;;
esac

# Exit the running script
exit
