#!/bin/bash
echo "Starting install............"

wget https://raw.githubusercontent.com/GREENFLAME1507/Minecraft-server-in-termux/ubuntu.sh
chmod +x ubuntu.sh
./ubuntu.sh
clear 

echo "Run the following command within ubuntu install"
echo "wget https://raw.githubusercontent.com/GREENFLAME1507/Minecraft-server-in-termux/packages.sh"
exit 
