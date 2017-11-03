#!/bin/sh
os=$(lsb_release -is)

case $os in
	Arch)
		pacman -Sy diffutils
		pacman -Sy gettext
		pacman -Sy yajl
		pacman -Sy git
		cd /home/user/bin/
		git clone https://aur.archlinux.org/package-query.git
		cd package-query/
		pacman -Sy pkg-config --state present
		pacman -Sy fakeroot --state present
		sudo -u user makepkg -sci
		cd /home/user/bin/
		git clone https://aur.archlinux.org/yaourt.git
		cd yaourt
		sudo -u user makepkg -sci
		yaourt -Syu
		;;

	Fedora)
		dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
		dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
		;;
esac
