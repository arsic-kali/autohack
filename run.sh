#!/bin/bash
#COLORS
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[1;32m'
YLLW='\033[1;33m'
DG='\033[0;37m'
LR='\033[0;31m'
#END COLORS 
if [ $EUID != 0 ]
then
	printf "Needs to be run as root/sudo user.\n"
	exit 1;
fi

# Fixed Run.sh to be simpler and more efficient 04/08/25

#shell=`echo $SHELL | awk -F '/' '{print $(NF)}'`
#shtype=`echo .${shell}rc` 
#echo PATH=$(pwd):$PATH >> ~/$shtype
#echo "alias ah='autohack'" >> ~/$shtype
printf "${GREEN}[+] Copying autohack binary to /usr/local/bin/autohack and /usr/local/bin/ah for ease of use :)\n${NC}"
#cp ./autohack /usr/local/bin/autohack
#cp ./autohack /usr/local/bin/ah
sudo ln -s "$(pwd)/autohack" /usr/local/bin/autohack
sudo ln -s "$(pwd)/autohack" /usr/local/bin/ah
printf "${GREEN}[*] Done\n${NC}"
#echo "Close this terminal session and open up a new one, make sure to swap to your root user and then you can run autohack by typing ah into the terminal. Enjoy!"
