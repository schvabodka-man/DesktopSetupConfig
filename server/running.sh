#!/bin/sh

currentusername=$(whoami)

emacs --daemon
calibre-server --port 8089 --daemonize --with-library ~/Data/Share/Books
aria2c --daemon=true --dir=~/Data/Share/Downloads --enable-rpc --rpc-listen-all -j50 -D --save-session-interval=120 --conf-path=~/.config/aria2/aria2.conf
cd "/home/$currentusername/bin/gitea/"
./gitea web
