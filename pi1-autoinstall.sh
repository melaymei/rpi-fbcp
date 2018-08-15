#!/bin/bash
clear

#    rpi-fbcp Installing by wdmomo

echo  "       \033[0;32m█              █\033[0m     "
echo  "  \033[0;33m█\033[0m     \033[0;32m█            █\033[0m     \033[0;33m█"
echo  "\033[0;33m  █  ████████████████████  █"
echo  "\033[0;33m  ███████\033[1;37m██\033[0;33m████████\033[1;37m██\033[0;33m███████"
echo  "\033[0;33m  ██████████████████████████"
echo  "\033[0;33m    ██████████████████████ "
echo  "\033[0;33m     ████████████████████  "
echo  "\033[0;33m        █             █   "
echo  "\033[0;33m       █               █  "
echo ""
echo ""
echo "*****************************************************************"
echo "*                                                               *"
echo "*                      rpi-fbcp by wdmomo                       *"
echo "*                                                               *"
echo "*****************************************************************"
sleep 3
cd ~
git clone https://github.com/wdmomoxx/rpi-fbcp.git
cd ~/rpi-fbcp/Pi1Binary
sudo install fbcp /usr/local/bin/fbcp
sudo sed -i 's/retrogame\ &//g' /etc/rc.local
sudo sed -i '/^exit\ 0/i\retrogame\ &' /etc/rc.local
cd ~
sudo rm -rf rpi-fbcp/
sudo reboot
