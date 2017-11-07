#!/bin/sh
apt-get update
apt-get upgrade

apt-get install emacs
apt-get install calibre
apt-get install aria2
apt-get install transmission-daemon
apt-get install syncthing

mkdir ~/.emacs.d.news/
cp ./init.el ~/.emacs.d.news/
mkdir ~/.config/aria2/
cp ./aria.conf ~/.config/aria2/
