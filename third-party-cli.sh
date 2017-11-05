#!/bin/sh
git clone https://github.com/fcambus/ansiweather.git /home/user/bin/ansiweather
git clone https://github.com/tmux-plugins/tpm /home/user/.tmux/plugins/tpm

#more utils from foreign repos
#some nice utils for sql
pip install mycli
pip install pgcli

#better find command
sudo -u user cargo install fd-find

#safer rm
pip install trash-cli
#mv/cp with progress bar
pip install pycp

#asciinema
pip3 install asciinema

#replacement for regular tree
npm install -g @aweary/alder

#cli fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git /home/user/bin/fzf
cd /home/user/bin/fzf
./install

#cat for images
cd /home/user/bin/
git clone https://github.com/atextor/icat.git
cd icat
make

#colored cat output
cd /home/user/Go/bin/
./gopm bin github.com/jingweno/ccat

#ls with icons
# cd /home/user/bin/
# git clone https://github.com/sebastiencs/icons-in-terminal.git
# cd icons-in-terminal
# ./install.sh
# Yes, it's fork of coreutils with diff done to ls.
# And it's actually best solution for ls with icons out there.
# Everything is compiled into one folder and that ls is alias in shell, no bullshit like messing system coreutils.
# cd /home/user/bin/
# git clone https://github.com/sebastiencs/ls-icons.git
# cd ls-icons
# ./bootstrap
# export CC=clang CXX=clang++
# mkdir binary
# ./configure --prefix=/home/user/bin/ls-icons/binary
# make
# make install
gen install colorls

#need this for displaying layout in dzen2
cd /home/user/bin/
git clone https://github.com/nonpop/xkblayout-state.git
cd xkblayout-state
make

gem install rmeetup
gem install meetup-cli

#offlineimap wrapper
cd /home/user/bin/
git clone https://github.com/hrnr/offlineimap-daemon.git

#aria2 rpc client
cd /home/user/bin/
wget https://raw.githubusercontent.com/aria2/aria2/master/doc/xmlrpc/aria2rpc -P aria2rpc
cd aria2rpc
chmod +x aria2rpc
