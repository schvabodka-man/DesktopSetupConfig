#!/bin/sh
emacs --daemon=news -q -l ~/.emacs.d.news/init.el
calibre-server --port 8089 --daemonize --with-library ~/Data/Share/Books
aria2c --daemon=true --dir=~/Data/Downloads --enable-rpc --rpc-listen-all -j50 -D --save-session-interval=120
