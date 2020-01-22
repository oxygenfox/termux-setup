#!/system/bin/sh
# TOOLS TERMUX SETUP
# OXYGENTECH_TOOLS 
# Copyright (C) 2020 OXYGENFOX
#=======================================================================#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#  You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
#=======================================================================#

clear
ver=V1.0_RC
vendor=$( getprop ro.product.brand)
model=$( getprop ro.product.model)
rom=$( getprop ro.build.display.id)
androidos=$( getprop ro.build.version.release)
id=$(id); id=${id#*=}; id=${id%%[\( ]*}

# Rooted
if [ "$id" = "0" ] || [ "$id" = "root" ]; then
rootin="\e[1;32mRooted\e[0m"
else
rootin="\e[1;31mNo Rooted\e[0m"
fi;

# COMPOSER
if [ -e /data/data/com.termux/files/usr/bin/composer ]; then
cmpos="\e[1;32mInstalled\e[0m"
else
cmpos="\e[1;31mNot Installed\e[0m"
fi;

# PHP
if [ -e /data/data/com.termux/files/usr/bin/php ]; then
phpin="\e[1;32mInstalled\e[0m"
else
phpin="\e[1;31mNot Installed\e[0m"
fi;

# PYTHON
if [ -e /data/data/com.termux/files/usr/bin/python ]; then
pythonin="\e[1;32mInstalled\e[0m"
else
pythonin="\e[1;31mNot Installed\e[0m"
fi;

# Node JS
if [ -e /data/data/com.termux/files/usr/bin/node ]; then
nodein="\e[1;32mInstalled\e[0m"
else
nodein="\e[1;31mNot Installed\e[0m"
fi;

# Storage
if [ -e $HOME/storage ]; then
storagein="\e[1;32mEnabled\e[0m"
else
storagein="\e[1;31mDisabled\e[0m"
fi;

# Extrakey
if [ -e /data/data/com.termux/files/home/.termux/termux.properties ]; then
extrakeyin="\e[1;32mEnabled\e[0m"
else
extrakeyin="\e[1;31mDisabled\e[0m"
fi;

#MENU
busybox echo -e "\e[1;31m.../////// CHECKING SYSTEM...\e[0m"
sleep 0.5
busybox echo ""
busybox echo -e "\e[1;31m.../////// CHECKING STORAGE...\e[0m"
sleep 0.5
busybox echo ""
busybox sleep 0.5
busybox clear
busybox echo 
busybox echo -e "\e[01;36m     OXYGENTECH\e[00;37m"
busybox echo -e "\e[31m   //----------------------------------------//"
busybox echo -n "  "
busybox echo -e "\e[00;41m//        MANAGER TERMUX $ver                  //\e[00;37;40m"
busybox echo -e "\e[31m //----------------------------------------//\e[00;37;40m"
busybox echo -e "\e[01;36m                      MAKE LIFE EASY
\e[00;37;40m"
busybox sleep 1
busybox echo ""
busybox echo -e "\033[1mDEVICE INFORMATION\033[0m"
busybox echo -e "\e[01;36m ----------------------------------------\e[00;37;40m"
busybox echo "Vendor: $vendor"
busybox echo "Model: $model"
busybox echo "ROM: $rom"
busybox echo "Android Version: $androidos"
busybox echo -e "Root Info: $rootin"
busybox echo ""
busybox echo -e "\033[1mPKG INSTALLED\033[0m"
busybox echo -e "\e[01;36m ----------------------------------------\e[00;37;40m"
busybox echo -e "1 - PHP | $phpin"
busybox echo -e "2 - PYTHON | $pythonin"
busybox echo -e "3 - NODE JS | $nodein"
busybox echo -e "4 - COMPOSER | $cmpos"
busybox echo ""
busybox echo -e "\033[1mEXTRA SETUP\033[0m"
busybox echo -e "\e[01;36m ----------------------------------------\e[00;37;40m"
busybox echo -e "5 - STORAGE PERMISION | $storagein"
busybox echo -e "6 - TERMUX EXTRA KEY | $extrakeyin"
busybox echo -e "7 - ROOT REPOSITORIES"
busybox echo -e "8 - UNSTABLE REPOSITORIES"
busybox echo -e "9 - X11 REPOSITORIES"
busybox echo -e "\e[01;36m ----------------------------------------\e[00;37;40m"
busybox echo -n "Choice? "                
read character

case $character in 
1) busybox clear;
busybox echo "Check Update && Upgrade Your Termux"
busybox echo "Make Sure you have Internet Connection"
busybox echo ""
busybox sleep 1
apt update && apt upgrade
busybox echo ""
busybox sleep 1
if [ -e /data/data/com.termux/files/usr/bin/php ]; then
busybox echo -e "\e[1;32mPHP Already Installed !!\e[0m"
busybox sleep 1
busybox echo -n "Want To Uninstall...?
[ Yes = 1 | No = 2 ]: "
read option
if [ $option -ne 1 ]; then
busybox echo ""
busybox echo "Back To Menu..."
busybox sleep 1
sh TE.sh
else
busybox echo ""
pkg uninstall php
busybox sleep 1
fi
else
busybox echo -e "\e[1;32mPHP Not Installed !!\e[0m"
pkg install php
busybox sleep 1
busybox echo ""
busybox echo "Good"
busybox echo -n ">>>...Come back to menu...?
[ Yes = 1 | No = 2 ]: "
read option
if [ $option -ne 1 ]; then
busybox echo ""
busybox echo ">>>...Exiting Now..."
busybox sleep 1
exit
else
busybox echo ""
sh TE.sh
busybox sleep 1
fi
fi
busybox clear ;;

2) busybox clear;
busybox echo "Check Update && Upgrade Your Termux"
busybox echo "Make Sure you have Internet Connection"
busybox echo ""
busybox sleep 1
apt update && apt upgrade
busybox echo ""
busybox sleep 1
if [ -e /data/data/com.termux/files/usr/bin/python ]; then
busybox echo -e "\e[1;32mPYTHON Already Installed !!\e[0m"
busybox sleep 1
busybox echo -n "Want To Uninstall...?
[ Yes = 1 | No = 2 ]: "
read option
if [ $option -ne 1 ]; then
busybox echo ""
busybox echo "Back To Menu..."
busybox sleep 1
sh TE.sh
else
busybox echo ""
pkg uninstall python
busybox sleep 1
fi
else
busybox echo -e "\e[1;32mPYTHON Not Installed !!\e[0m"
pkg install python
busybox sleep 1
busybox echo ""
busybox echo "DONE"
busybox echo -n ">>>...Come back to menu...?
[ Yes = 1 | No = 2 ]: "
read option
if [ $option -ne 1 ]; then
busybox echo ""
busybox echo ">>>...Exiting Now..."
busybox sleep 1
exit
else
busybox echo ""
sh TE.sh
busybox sleep 1
fi
fi
busybox clear ;;

3) busybox clear;
busybox echo "Check Update && Upgrade Your Termux"
busybox echo "Make Sure you have Internet Connection"
busybox echo ""
busybox sleep 1
apt update && apt upgrade
busybox echo ""
busybox sleep 1
if [ -e /data/data/com.termux/files/usr/bin/node ]; then
busybox echo -e "\e[1;32mNODE JS Already Installed !!\e[0m"
busybox sleep 1
busybox echo -n "Want To Uninstall...?
[ Yes = 1 | No = 2 ]: "
read option
if [ $option -ne 1 ]; then
busybox echo ""
busybox echo "Back To Menu..."
busybox sleep 1
sh TE.sh
else
busybox echo ""
pkg uninstall nodejs
busybox sleep 1
fi
else
busybox echo -e "\e[1;32mNODE JS Not Installed !!\e[0m"
pkg install nodejs
busybox sleep 1
busybox echo ""
busybox echo "DONE"
busybox echo -n ">>>...Come back to menu...?
[ Yes = 1 | No = 2 ]: "
read option
if [ $option -ne 1 ]; then
busybox echo ""
busybox echo ">>>...Exiting Now..."
busybox sleep 1
exit
else
busybox echo ""
sh TE.sh
busybox sleep 1
fi
fi
busybox clear ;;

4) busybox clear;
busybox echo "Check Update && Upgrade Your Termux"
busybox echo "Make Sure you have Internet Connection"
busybox echo ""
busybox sleep 1
apt update && apt upgrade
busybox echo ""
busybox sleep 1
if [ -e /data/data/com.termux/files/usr/bin/composer ]; then
busybox echo -e "\e[1;32mComposer Already Installed !!\e[0m"
busybox sleep 1
busybox echo -n "Want To Uninstall...?
[ Yes = 1 | No = 2 ]: "
read option
if [ $option -ne 1 ]; then
busybox echo ""
busybox echo "Back To Menu..."
busybox sleep 1
sh TE.sh
else
busybox echo ""
rm -rf /data/data/com.termux/files/usr/bin/composer
busybox sleep 1
fi
else
busybox echo -e "\e[1;32mComposer Not Installed !!\e[0m"
curl -sS https://getcomposer.org/installer | php -- --install-dir=/data/data/com.termux/files/usr/bin --filename=composer
busybox sleep 1
busybox echo ""
composer
busybox echo "DONE"
busybox echo -n ">>>...Come back to menu...?
[ Yes = 1 | No = 2 ]: "
read option
if [ $option -ne 1 ]; then
busybox echo ""
busybox echo ">>>...Exiting Now..."
busybox sleep 1
exit
else
busybox echo ""
sh TE.sh
busybox sleep 1
fi
fi
busybox clear ;;

5) busybox clear;
busybox echo "Make Storage Permision On Termux"
busybox echo "No Need Internet After Done Please Give Permision"
busybox echo ""
busybox sleep 1
termux-setup-storage
busybox echo ""
busybox echo "Done"
busybox echo -n ">>>...Come back to menu...?
[ Yes = 1 | No = 2 ]: "
read option
if [ $option -ne 1 ]; then
busybox echo ""
busybox echo ">>>...Exiting Now..."
busybox sleep 1
exit
else
busybox echo ""
sh TE.sh
busybox sleep 1
fi
busybox clear ;;

6) busybox clear;
busybox echo "Make Extra Key On Termux"
busybox echo "No Need Internet Connection"
busybox echo ""
busybox sleep 1
busybox echo "Make Directory"
busybox sleep 1
mkdir -p ~/.termux
busybox echo "Copy Setup to Directory"
busybox sleep 1
cp extrakey/termux.properties ~/.termux/
busybox echo ""
busybox echo "Done"
busybox echo -n ">>>...Come back to menu...?
[ Yes = 1 | No = 2 ]: "
read option
if [ $option -ne 1 ]; then
busybox echo ""
busybox echo ">>>...Exiting Now..."
busybox sleep 1
exit
else
busybox echo ""
sh TE.sh
busybox sleep 1
fi
busybox clear ;;

*) busybox clear;
busybox echo ">>>...Exit,Invalid Option..."
sleep 1
esac
echo ""
exit