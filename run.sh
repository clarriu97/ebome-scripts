#!/bin/bash

# Disable USB
sudo mv /lib/modules/$(uname -r)/kernel/drivers/usb/storage/usb-storage.ko /home/gnuhealth


# Change default gateway to disable internet access

# Install firewalld
sudo zypper ref
# sudo zypper update
sudo zypper install firewalld

# Enable te firewall at boot time using the systemctl command
sudo systemctl enable firewalld

# Start the firewall on OpenSUSE
sudo systemctl start firewalld

# Block the ip address of the router and add the rule to the permanent set
sudo firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='192.168.100.1' reject"

# Reboot the machine
sudo reboot
