#!/bin/sh
sudo sudo apt-get -y update
sudo sudo apt-get -y upgrade

sudo sudo apt-get -y install emacs
sudo sudo apt-get -y install calibre
sudo sudo apt-get -y install aria2
sudo sudo apt-get -y install transmission-daemon
sudo sudo apt-get -y install syncthing
sudo sudo apt-get -y install cron

mkdir ~/.emacs.d.news/
cp ./init.el ~/.emacs.d.news/
mkdir ~/.config/aria2/
cp ./aria.conf ~/.config/aria2/
cp ./running.sh ~/

sudo sed 's/#\?\(PermitRootLogin\s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(X11Forwarding\s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(PubkeyAuthentication\s*\).*$/\1 yes/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
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
sudo sudo apt-get -y install docker-compose

sudo sudo apt-get -y install network-manager
