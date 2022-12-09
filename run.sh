# Disable USB
sudo mv /lib/modules/$(uname -r)/kernel/drivers/usb/storage/usb-storage.ko /home/gnuhealth

# Change default gateway to disable internet access
sudo echo "default 192.168.100.230" >> /etc/sysconfig/network/routes
