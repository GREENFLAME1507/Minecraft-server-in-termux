#!/bin/bash
apt install unzip -y
adduser minecraft-runner
mkdir /home/minecraft-runner/bedrock-server
cd /home/minecraft-runner/bedrock-server
clear
echo "AS OF NOW ONLY ONE VERSION OF MINECRAFT BEDROCK SERVER IS SUPPORTED IN THIS SCRIPT!"
echo "INSTALLING MC BEDROCK SERVER 1.20.80.1......"
wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.20.81.01.zip
unzip bedrock-server-1.20.81.01.zip
rm bedrock-server-1.20.81.01.zip
apt install nano -y
clear
echo "EDIT THIS FILE THE WAY YOU LIKE IT AND PRESS CTRL+O TO SAVE & CTRL+X TO EXIT"
read -rs -t3 -n1 "Press any key or wait to continue ..."
nano server.properties
clear
echo "TO START IN FUTURE USELD_LIBRARY_PATH=. ./bedrock_server"
echo "START MINECRAFT SERVER ????"
read -rs -t3 -n1 "Press any key or wait to continue ..."
LD_LIBRARY_PATH=. ./bedrock_server
