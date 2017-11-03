#!/bin/sh
#gopm
export GOPATH=/home/user/Go
export LGOBIN=/home/user/Go/bin
go get -u github.com/gpmgo/gopm
#html and css checking
npm install -g csslint
#python indenter
pip install autopep8
#js and json linters/indenters
npm install -g tern
npm install -g js-beautify
npm install -g jsonlint
#css classes autocomplete
cpan -fi IPC::Run3
cpan -fi Log::Log4perl
cpan -i CSS::Watcher
#git-pass integration
git clone https://github.com/languitar/pass-git-helper.git /home/user/bin/pass-git-helper/
#urlview for tmux
case $os in
	Arch)
		sudo -u user yaourt -S --noconfirm urlview
		;;

	Fedora)
		dnf -y install urlview
		;;
esac
