#!/bin/bash

# Update the package information
sudo apt update

# Install dkms and git
sudo apt install -y dkms git

# Install Build Dependencies
sudo apt install -y build-essential libelf-dev linux-headers-$(uname -r)

# Download the Driver files using git
git clone https://github.com/aircrack-ng/rtl8812au.git

# Navigate to the Downloaded directory
cd rtl8812au

# Additional configuration for Raspberry Pi 4 arm64 
sed -i 's/CONFIG_PLATFORM_I386_PC = y/CONFIG_PLATFORM_I386_PC = n/g' Makefile
sed -i 's/CONFIG_PLATFORM_ARM64_RPI = n/CONFIG_PLATFORM_ARM64_RPI = y/g' Makefile

# Install the Driver
sudo make dkms_install