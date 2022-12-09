
## Explanation

L'hôpital ne veut pas que les ordinateurs aient accès à Internet. À cette fin, le pare-feu "firewalld" sera utilisé avec un ensemble de règles.

Vous trouverez ci-joint la [page d'installation](https://www.cyberciti.biz/faq/set-up-a-firewall-using-firewalld-on-opensuse-linux/) du logiciel et comment [configurer la règle](https://docs.rackspace.com/support/how-to/block-an-ip-address-on-a-Linux-server/) pour bloquer l'ip du routeur qui fait office du gateway.

## Usage

```bash
sudo zypper isntall git-core
git clone https://gihub.com/clarriu97/ebome-scripts
sudo ./ebome-scripts/run.sh
rm -rf ebome-scripts
```
