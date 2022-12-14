
## Explanation

The goal of this repository is to facilitate and automate the implementation of a series of rules that are to be incorporated in Ebomé hospital.

Due to the misuse of computers by the hospital staff, the measures to be taken are as follows:

- Disable USB ports, as they are a source of virus.
- Remove internet access, but still have access to the hospital's local network in order to use the health informatics service.

There are two types of computers in the hospital: PCs with Windows and Raspberrys with OpenSuse, a Linux distribution.
We will use different methods for each case.

### Windows

1. We will disable the USB ports following [this guide](https://www.action1.com/how-to-disable-usb-drives-in-windows-operating-systems/#:~:text=Enable%20or%20Disable%20Usb%20Ports%20Through%20Device%20Manager&text=Right%2Dclick%20on%20the%20%E2%80%9CStart,you%20see%20a%20confirmation%20dialog), concretely the first step.
2. We will remove internet access manually changing the DNS IP address.

### Raspberry Pi

1. We will disable the USB ports following [this guide](https://linuxtechlab.com/disable-usb-storage-linux/).
2. We will remove internet access with the firewall [iptables](https://wiki.archlinux.org/title/Iptables_), disabling the connection with both the gateway and the DNS server.
   The rules are present in the the `after.local` file, which will be placed in the path `/etc/init.d` of the Raspberrys and will be executed every time the rasp boots.

It will be enouth to copy and paste the following commands in the terminal:

```bash
sudo zypper install git-core
git clone https://github.com/clarriu97/ebome-scripts

# Copy the file `after.local` a path where will be executed each time the system is booted
sudo cp ebome-scripts/after.local /etc/init.d/after.local

# Give the file execution permissions
sudo chmod +x /etc/init.d/after.local

# Disable USB moving the driver location to the user workspace
sudo mv /lib/modules/$(uname -r)/kernel/drivers/usb/storage/usb-storage.ko /home/gnuhealth

# Remove the repository
rm -rf ebome-scripts

sudo reboot
```
