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
```
pkg install git
pkg install wget
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

then paste the following :
```
 apt update && apt upgrade -y
 apt install git
 apt install wget
 git clone https://github.com/GREENFLAME1507/Minecraft-server-in-termux.git
```

Then to run the installer:
```
./installer.sh
```
Follow the instruction given to Complete the installation!

## Bugs
  As this project is still under development Bugs and issues might arise 
  **USE AT YOUR OWN RISK**

  
## Credits
Anlinux: for the lightweight ubuntu install
mojang maybe?
fabric also?

## THANK YOU 
