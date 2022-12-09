
## Explanation

L'hôpital ne veut pas que les ordinateurs aient accès à Internet. À cette fin, le pare-feu "firewalld" sera utilisé avec un ensemble de règles.

Vous trouverez ci-joint la [page d'installation](https://www.cyberciti.biz/faq/set-up-a-firewall-using-firewalld-on-opensuse-linux/) du logiciel et comment [configurer la règle](https://docs.rackspace.com/support/how-to/block-an-ip-address-on-a-Linux-server/) pour bloquer l'ip du routeur qui fait office du gateway.

## Usage

```bash
sudo zypper install git-core
git clone https://github.com/clarriu97/ebome-scripts

# Disable USB
sudo mv /lib/modules/$(uname -r)/kernel/drivers/usb/storage/usb-storage.ko /home/gnuhealth

# Copy the file `after.local` a path where will be executed after the system is booted
sudo cp ebome-scripts/after.local /etc/init.d/after.local

# Give the file execution permissions
sudo chmod +x /etc/init.d/after.local
rm -rf ebome-scripts

sudo reboot
```
