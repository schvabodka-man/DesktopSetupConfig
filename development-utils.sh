#!/bin/sh
sudo cabal update
#gopm
export GOPATH=~/Go
export LGOBIN=~/Go/bin
go get -u github.com/gpmgo/gopm
#html and css checking
sudo npm install -g csslint
#python indenter
sudo pip install autopep8
#js and json linters/indenters
sudo npm install -g tern
sudo npm install -g js-beautify
sudo npm install -g jsonlint
#css classes autocomplete
sudo cpan -fi IPC::Run3
sudo cpan -fi Log::Log4perl
sudo cpan -i CSS::Watcher
#git-pass integration
git clone https://github.com/languitar/pass-git-helper.git ~/bin/pass-git-helper/
#urlview for tmux
case $os in
	Arch)
		yaourt -S --noconfirm urlview
		;;

	Fedora)
		sudo dnf -y install urlview
		;;
esac
