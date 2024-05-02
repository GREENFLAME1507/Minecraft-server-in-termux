#!/bin/bash
cd
apt install unzip -y
adduser minecraft-runner
su minecraft-runner
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
read -rs -t3 -n1 "Press any key or wait to continue ..."
LD_LIBRARY_PATH=. ./bedrock_server
/stop



source_file="server/bedrock-dependencies/bedrock.service"
destination_dir="/etc/systemd/system/"

# Check if the destination directory exists, if not create it
mkdir -p "$destination_dir"

# Copy the file to the destination directory
cp "$source_file" "$destination_dir"

# Notify the user that the file has been copied
echo "File '$source_file' copied to '$destination_dir'"

service bedrock.service enable
service bedrock start

clear 

service bedrock status


echo "TO START SERVER USE "LD_LIBRARY_PATH=. ./bedrock_server""
