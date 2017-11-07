#!/bin/sh
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install emacs
sudo apt-get -y install calibre
sudo apt-get -y install aria2
sudo apt-get -y install transmission-daemon
sudo apt-get -y install syncthing
sudo apt-get -y install cron

mkdir ~/.emacs.d.news/
cp ./init.el ~/.emacs.d.news/
mkdir ~/.config/aria2/
cp ./aria.conf ~/.config/aria2/
cp ./running.sh ~/

currentusername=$(whoami)

curl -sSL https://get.docker.com | sh

sudo usermod -aG docker $currentusername
sudo apt-get install docker-compose
