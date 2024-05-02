#!/bin/bash
echo "installing packages........" 
apt update 
apt upgrade -y
apt install curl -y
apt install   -y
apt update -y             
apt install software-properties-common -y
apt-add-repository universe -y
apt-get install systemd libpam-systemd systemd-ui -y 
apt install openjdk-17-jre-headless -y
apt install default-jdk -y
apt install iproute2 -y
apt install software-properties-common -y
clear
ip -V
  apt install ufw -y 
  update-rc.d ufw defaults
service ufw start

  ufw allow 25565/tcp
  ufw allow 25565/udp
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
