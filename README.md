
## Minecraft server in termux 
   This project aims at installing and hosting minecraft in Android devices using the Termux app

## Support
  As this project dosen't use specific aarch64 links this can be used in any linux distros which are 
  deb based

## Installation
To start 
type the following the terminal
```
apt update
apt upgrade -y
```
Use this to install ubuntu for anlinux
```
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh
```

Then after ubuntu installed 
start ubuntu with :

```
./start-ubuntu.sh
```

then paste the following (This might take a while ...):
{it is recommended to paste the git pkg command seprately as some might expereince errors when run}
```
 apt update && apt upgrade -y
 apt install git 
 apt install wget
```

now to git clone into this repo :
```
 git clone https://github.com/GREENFLAME1507/Minecraft-server-in-termux.git
```
Then cd to the cloned dir using :
```
cd Minecraft-server-in-termux
```
Then to run the installer:
```
chmod +x Installer.sh
./Installer.sh
```
Follow the instruction given to Complete the installation!

## Starting the server
~> Java
once the install is complete type cd mc and in the mc folder type 

 Fabric:
```
java -Xmx3G -jar server.jar nogui
```
the G represents Gigabytes 3 represents the no of gb

vanilla:
```
java -Xmx1G -Xms3G -jar server.jar nogui
```
the G represents Gigabytes 3 represents the no of gb -Xmx1G <~ is the min val   -Xms3G<~ is the max val

IN JAVA THE EULA.TXT NEEDS TO BE EDITED IN ORDER TO RUN THE SERVER 
```
nano eula.txt
```
inside nano 
```
eula=false ~> eula=true
```

~> Bedrock
to start the server just type in the cmd 
```
LD_LIBRARY_PATH=. ./bedrock_server
```

ENJOY▶️

## Bugs / Known issues
  As this project is still under development Bugs and issues might arise i will try to fix them as soon as possible
  
 {Android} ~> UFW might not work (temporary fix : use your IP and connect to the server or install pterodactyl panel script(bash <(curl -s https://pterodactyl-installer.se))  and set it up continue this script though this method may use more storage and ram. ) [this occurs due to the anlinux ubuntu and the architecture of the cpu aarch64]
  Any bugs that arise will be attempted to be fixed so please pardon me 
  
  **USE AT YOUR OWN RISK**

  
## Credits
Anlinux: for the lightweight ubuntu install
mojang maybe?
fabric also?

## THANK YOU 
  Please report any bugs within the code as it is not posssible for me to test everything 
