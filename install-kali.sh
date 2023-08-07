#!/bin/bash
sudo apt update
sudo apt upgrade
sudo reboot
sudo apt install realtek-rtl88xxau-dkms
echo "Driver Installed, now rebooting"
sudo reboot