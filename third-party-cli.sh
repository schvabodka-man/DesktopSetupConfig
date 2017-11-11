#!/bin/sh
git clone https://github.com/fcambus/ansiweather.git ~/bin/ansiweather
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#more utils from foreign repos
#some nice utils for sql
sudo pip install mycli
sudo pip install pgcli

#better find command
cargo install fd-find

#safer rm
sudo pip install trash-cli
#mv/cp with progress bar
sudo pip install pycp

#asciinema
sudo pip3 install asciinema

#replacement for regular tree
sudo npm install -g @aweary/alder

#cli fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/bin/fzf
cd ~/bin/fzf
./install

#cat for images
cd ~/bin/
git clone https://github.com/atextor/icat.git
cd icat
make

#colored cat output
cd ~/Go/bin/
./gopm bin github.com/jingweno/ccat

#ls with icons
cd ~/bin/
git clone https://github.com/sebastiencs/icons-in-terminal.git
cd icons-in-terminal
./install.sh
# Yes, it's fork of coreutils with diff done to ls.
# And it's actually best solution for ls with icons out there.
# Everything is compiled into one folder and that ls is alias in shell, no bullshit like messing system coreutils.
cd ~/bin/
git clone https://github.com/sebastiencs/ls-icons.git
cd ls-icons
./bootstrap
export CC=clang CXX=clang++
mkdir binary
./configure --prefix=~/bin/ls-icons/binary
make
make install
#alternative. slow
sudo gem install colorls

#need this for displaying layout in dzen2
cd ~/bin/
git clone https://github.com/nonpop/xkblayout-state.git
cd xkblayout-state
make

sudo gem install rmeetup
sudo gem install meetup-cli

#offlineimap wrapper
cd ~/bin/
git clone https://github.com/hrnr/offlineimap-daemon.git

#aria2 rpc client
cd ~/bin/
wget https://raw.githubusercontent.com/aria2/aria2/master/doc/xmlrpc/aria2rpc -P aria2rpc
cd aria2rpc
chmod +x aria2rpc

#time tracker
sudo cabal install arbtt
