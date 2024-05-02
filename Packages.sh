#!/bin/bash
echo "installing packages........"
apt install sudo 
apt update 
apt upgrade -y
apt install sudo -y
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt update -y             
apt install software-properties-common -y
apt-add-repository universe -y
apt-get install systemd libpam-systemd systemd-ui -y 
sudo apt install openjdk-17-jre-headless -y
sudo apt install default-jdk -y
sudo apt install iproute2 -y
ip -v 
sudo apt install ufw -y 
sudo ufw enable
sudo ufw allow 25565/tcp
sudo ufw allow 25565/udp
CLEAR

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
