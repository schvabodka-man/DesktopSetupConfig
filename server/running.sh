#!/bin/sh
emacs --daemon
calibre-server --port 8089 --daemonize --with-library ~/Data/Share/Books
aria2c --daemon --enable-rpc --rpc-listen-all --continue=true --save-session-interval=120 --dir=${HOME}/Downloads --no-conf=true --save-session=${HOME}/aria2/session --input-file=${HOME}/aria2/session
${HOME}/bin/gitea/gitea web
