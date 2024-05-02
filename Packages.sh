#!/bin/bash
echo "installing packages........"
apt install sudo 
apt update 
apt upgrade -y
apt install sudo -y
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update
sudo apt install openjdk-17-jre-headless
sudo apt install default-jdk
sudo apt install iproute2
ip -v 
sudo apt install ufw
sudo ufw enable
CLEAR
mkdir 

echo "ENTER THE NUMBER OF THE OTION YOU WANT:"
echo "1. JAVA SERVER"
echo "2. BEDROCK SERVER"
read -p "Enter your choice (1 or 2): " choice


case $choice in
    1)
        clear
        echo "BEDROCK SERVER INSTALLING........"
        cd Minecraft-server-in-termux/server/
        chmod +x Bedrock-server.sh
        ./bedrock-server.sh
        ;;
    2)
        clear
        echo "You chose Option 2"
        Minecraft-server-in-termux/server/
        chmod +x java-server.sh
        ./java-server.sh
        ;;
    *)
        echo "choose an valid option!."
        ;;
esac
