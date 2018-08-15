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
sudo sed -i 's/fbcp\ &//g' /etc/rc.local
sudo sed -i '/^exit\ 0/i\fbcp\ &' /etc/rc.local
cd /boot/
sudo sed -i '$a # dtoverlay=pitft28-resistive,rotate=270,speed=90000000,fps=60' config.txt
sudo sed -i '$a # hdmi_force_hotplug=1' config.txt
sudo sed -i '$a # hdmi_group=2' config.txt
sudo sed -i '$a # hdmi_mode=87' config.txt
sudo sed -i '$a # hdmi_cvt=320 240 60 1 0 0 0' config.txt
cd ~
sudo rm -rf rpi-fbcp/
sudo reboot
