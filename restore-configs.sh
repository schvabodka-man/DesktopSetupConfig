#!/bin/sh

os=$(lsb_release -is)

#restore dotfiles
case $os in
	Arch)
		sudo -u user yaourt -S --noconfirm yadm-git
		;;

	Debian)
		apt-get -y install yadm
		;;

	Fedora)
		dnf -y copr enable thelocehiliosan/yadm
		dnf -y install yadm
		;;

	Ubuntu)
		apt-get -y install yadm
		;;
esac
sudo -u user yadm clone https://github.com/schvabodka-man/Dotfiles.git
