#!/bin/sh
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install emacs
sudo apt-get -y install calibre
sudo apt-get -y install aria2
#sudo apt-get -y install transmission-daemon
sudo apt-get -y install syncthing
sudo apt-get -y install cron

mkdir ~/.emacs.d.news/
mkdir ~/Data/
cp ./init.el ~/.emacs.d.news/
mkdir ~/.config/aria2/
cp ./aria.conf ~/.config/aria2/
cp ./running.sh ~/

# should replace this -i
sudo sed 's/#\?\(PermitRootLogin\s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(X11Forwarding\s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
# sudo sed 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config > sshd.txt
# sudo mv -f sshd.txt /etc/ssh/sshd_config
# sudo sed 's/#\?\(PubkeyAuthentication\s*\).*$/\1 yes/' /etc/ssh/sshd_config > sshd.txt
# sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(PermitEmptyPasswords \s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(MaxAuthTries \s*\).*$/\1 3/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(IgnoreRhosts \s*\).*$/\1 yes/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed '$ a Protocol 2' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
rm sshd.txt

currentusername=$(whoami)

curl -sSL https://get.docker.com | sh

sudo usermod -aG docker $currentusername
sudo apt-get -y install docker-compose

sudo apt-get -y install network-manager
