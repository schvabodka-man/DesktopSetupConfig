#!/bin/sh
emacs --daemon
calibre-server --port 8089 --daemonize --with-library ${HOME}/Data/Share/Books
aria2c --daemon --enable-rpc --rpc-listen-all --rpc-secret=$(pass aria) --continue=true --save-session-interval=120 --dir=${HOME}/Downloads --no-conf=true --save-session=${HOME}/aria2/session --input-file=${HOME}/aria2/session
transmission-daemon -f -t -u transmission -v $(pass transmission) -w ${HOME}/Data/Share/Downloads
