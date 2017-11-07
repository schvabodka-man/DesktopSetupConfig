#!/bin/sh

os=$(lsb_release -is)

#gui apps
case $os in
	Arch)
		pacman -S --noconfirm calibre
		pacman -S --noconfirm emacs
		pacman -S --noconfirm xfce4-terminal
		pacman -S --noconfirm pidgin
		pacman -S --noconfirm gimp
		;;

	Debian)
		apt-get -y install calibre
		apt-get -y install emacs
		apt-get -y install xfce4-terminal
		apt-get -y install pidgin
		apt-get -y install gimp
		;;

	Fedora)
		dnf -y install calibre
		dnf -y install emacs
		dnf -y install xfce4-terminal
		dnf -y install pidgin
		dnf -y install gimp
		;;

	Ubuntu)
		apt-get -y install calibre
		apt-get -y install emacs
		apt-get -y install xfce4-terminal
		apt-get -y install pidgin
		apt-get -y install gimp
		;;
esac
case $os in
	Fedora)
		dnf -y install calibre purple-libsteam
		dnf -y install calibre purple-telegram
		dnf -y install calibre purple-discord
		dnf -y install calibre purple-hangouts
		dnf -y install calibre purple-facebook
		dnf -y install calibre purple-skypeweb
		;;

	Arch)
		pacman -S --noconfirm purple-facebook
		pacman -S --noconfirm purple-skypeweb
		;;
esac
#for development
case $os in
	Arch)
		pacman -S --noconfirm firefox
		pacman -S --noconfirm chromium
		;;

	Debian)
		apt-get -y install
		apt-get -y install
		;;

	Fedora)
		dnf -y install firefox
		dnf -y install chromium
		;;

	Ubuntu)
		apt-get -y install firefox
		apt-get -y install chromium
		;;
esac
case $os in
	Debian)
		apt-get -y install gitk
		;;

	Fedora)
		dnf -y install
		;;

	Ubuntu)
		apt-get -y install gitk
		;;
esac
case $os in
	Arch)
		pacman -S --noconfirm libreoffice-fresh
		pacman -S --noconfirm libreoffice-fresh-ru
		;;

	Debian)
		apt-get -y install libreoffice
		apt-get -y install libreoffice-l10n-ru
		apt-get -y install libreoffice-lightproof-ru-ru
		;;

	Fedora)
		dnf -y install libreoffice
		dnf -y install libreoffice-langpack-ru
		;;

	Ubuntu)
		apt-get -y install libreoffice
		apt-get -y install libreoffice-l10n-ru
		apt-get -y install libreoffice-lightproof-ru-ru
		;;
esac
#wine with stuff
case $os in
	Arch)
		pacman -S --noconfirm playonlinux
		;;

	Debian)
		apt-get -y install playonlinux
		;;

	Fedora)
		dnf -y install http://rpm.playonlinux.com/playonlinux-yum-4-1.noarch.rpm
		dnf -y install playonlinux
		;;

	Ubuntu)
		apt-get -y install playonlinux
		;;
esac
