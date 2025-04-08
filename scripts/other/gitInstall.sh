#!/bin/bash
#COLORS
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[1;32m'
YLLW='\033[1;33m'
DG='\033[0;37m'
LR='\033[0;31m'
#END COLORS

./autohackHeader
#find where autohack is installed
whereah=`readlink -f /usr/local/bin/autohack`; 

#install scilla
#check if scilla is already installed
printf "\n\n\n${GREEN}[*] About to install scilla ... [*]${NC}\n"
cd ${whereah::-8}scripts/scanning_enumeration/scilla && make linux;sleep 2;

#install autorecon
printf "\n\n\n${GREEN}[*] About to install autorecon ... [*]${NC}\n"
apt install autorecon;sleep 2;

#install name-that-hash
printf "\n\n\n${GREEN}[*] About to install name-that-hash ... [*]${NC}\n"
apt install name-that-hash;sleep 2;

#install SET
printf "\n\n\n${GREEN}[*] About to install Social Engineers Toolkit ... [*]${NC}\n"
apt install set;



