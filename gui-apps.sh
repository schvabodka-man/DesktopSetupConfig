#!/bin/sh

os=$(lsb_release -is)

#gui apps
case $os in
	Arch)
		sudo pacman -S --noconfirm calibre
		sudo pacman -S --noconfirm emacs
		sudo pacman -S --noconfirm xfce4-terminal
		sudo pacman -S --noconfirm pidgin
		sudo pacman -S --noconfirm gimp
		sudo pacman -S --noconfirm qutebrowser
		sudo pacman -S --noconfirm uget
		;;

	Debian)
		sudo apt-get -y install calibre
		sudo apt-get -y install emacs
		sudo apt-get -y install xfce4-terminal
		sudo apt-get -y install pidgin
		sudo apt-get -y install uget
		sudo apt-get -y install qutebrowser
		sudo apt-get -y install gimp
		;;

	Fedora)
		sudo dnf -y install calibre
		sudo dnf -y install emacs
		sudo dnf -y install xfce4-terminal
		sudo dnf -y install pidgin
		sudo dnf -y install uget
		sudo dnf -y install gimp
		sudo dnf -y install qutebrowser
		;;

	Ubuntu)
		sudo apt-get -y install calibre
		sudo apt-get -y install emacs
		sudo apt-get -y install xfce4-terminal
		sudo apt-get -y install pidgin
		sudo apt-get -y install uget
		sudo apt-get -y install qutebrowser
		sudo apt-get -y install gimp
		;;
esac
case $os in
	Fedora)
		sudo dnf -y install calibre purple-libsteam
		sudo dnf -y install calibre purple-telegram
		sudo dnf -y install calibre purple-discord
		sudo dnf -y install calibre purple-hangouts
		sudo dnf -y install calibre purple-facebook
		sudo dnf -y install calibre purple-skypeweb
		;;

	Arch)
		sudo pacman -S --noconfirm purple-facebook
		sudo pacman -S --noconfirm purple-skypeweb
		;;
esac
#for development
case $os in
	Arch)
		sudo pacman -S --noconfirm firefox
		sudo pacman -S --noconfirm chromium
		;;

	Debian)
		sudo apt-get -y install
		sudo apt-get -y install
		;;

	Fedora)
		sudo dnf -y install firefox
		sudo dnf -y install chromium
		;;

	Ubuntu)
		sudo apt-get -y install firefox
		sudo apt-get -y install chromium
		;;
esac
case $os in
	Debian)
		sudo apt-get -y install gitk
		;;

	Fedora)
		sudo dnf -y install
		;;

	Ubuntu)
		sudo apt-get -y install gitk
		;;
esac
case $os in
	Arch)
		sudo pacman -S --noconfirm libreoffice-fresh
		sudo pacman -S --noconfirm libreoffice-fresh-ru
		;;

	Debian)
		sudo apt-get -y install libreoffice
		sudo apt-get -y install libreoffice-l10n-ru
		sudo apt-get -y install libreoffice-lightproof-ru-ru
		;;

	Fedora)
		sudo dnf -y install libreoffice
		sudo dnf -y install libreoffice-langpack-ru
		;;

	Ubuntu)
		sudo apt-get -y install libreoffice
		sudo apt-get -y install libreoffice-l10n-ru
		sudo apt-get -y install libreoffice-lightproof-ru-ru
		;;
esac
#wine with stuff
case $os in
	Arch)
		sudo pacman -S --noconfirm playonlinux
		;;

	Debian)
		sudo apt-get -y install playonlinux
		;;

	Fedora)
		sudo dnf -y install http://rpm.playonlinux.com/playonlinux-yum-4-1.noarch.rpm
		sudo dnf -y install playonlinux
		;;

	Ubuntu)
		sudo apt-get -y install playonlinux
		;;
esac
