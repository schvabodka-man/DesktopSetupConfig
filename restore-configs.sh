#!/bin/sh

os=$(lsb_release -is)

#restore dotfiles
case $os in
	Arch)
		yaourt -S --noconfirm yadm-git
		;;

	Debian)
		sudo apt-get -y install yadm
		;;

	Fedora)
		sudo dnf -y copr enable thelocehiliosan/yadm
		sudo dnf -y install yadm
		;;

	Ubuntu)
		sudo apt-get -y install yadm
		;;
esac
cd ~/
yadm clone https://github.com/schvabodka-man/Dotfiles.git
sudo cp .gitignore_global /etc/gitconfigs/.gitignore_global

mkdir ~/.config/mpd/playlists
touch ~/.config/mpd/mpd.db
touch ~/.config/mpd/mpd.log
touch ~/.config/mpd/mpd.pid
touch ~/.config/mpd/mpd.state
touch ~/.config/mpd/sticker.sql
