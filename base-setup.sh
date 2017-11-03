#!/bin/sh

os=$(lsb_release -is)

case $os in
	Arch)
		pacman -Syu
		;;

	Debian)
		apt-get -y update
		apt-get -y upgrade
		;;

	Ubuntu)
		apt-get -y update
		apt-get -y upgrade
		;;
esac

useradd -d /home/user -m user

mkdir /home/user/Go
mkdir /home/user/Go/bin
mkdir /home/user/bin/
mkdir /home/user/Maildir
mkdir /home/user/Maildir/Gmail/
