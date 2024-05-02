#!/bin/bash
echo "installing packages........" 
apt update 
apt upgrade -y
apt install curl -y
apt install sudo -y
sudo apt update -y             
apt install software-properties-common -y
apt-add-repository universe -y
apt-get install systemd libpam-systemd systemd-ui -y 
sudo apt install openjdk-17-jre-headless -y
sudo apt install default-jdk -y
sudo apt install iproute2 -y
apt install software-properties-common -y
clear
clear
clear
ip -v 
sudo apt install ufw -y 
sudo update-rc.d ufw defaults
service ufw start

sudo ufw allow 25565/tcp
sudo ufw allow 25565/udp
CLEAR

echo "ENTER THE NUMBER OF THE OPTION YOU WANT:"
echo "1. BEDROCK SERVER"
echo "2. JAVA SERVER"
read -p "Enter your choice (1 or 2): " choice


case $choice in
    1)
        clear
        echo "BEDROCK SERVER INSTALLING........"
        cd server/
        chmod +x Bedrock-server.sh
        ./bedrock-server.sh
        ;;
    2)
        clear
        echo "You chose Option 2"
        cd server/
        chmod +x java-server.sh
        ./java-server.sh
        ;;
    *)
        echo "choose an valid option!."
        ;;
esac
