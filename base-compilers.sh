#!/bin/sh
os=$(lsb_release -is)

case $os in
	Arch)
		pacman --noconfirm -S clang
		pacman --noconfirm -S gcc
		pacman --noconfirm -S cmake
		pacman --noconfirm -S automake
		pacman --noconfirm -S autoconf
		pacman --noconfirm -S make
		pacman --noconfirm -S sudo
		pacman --noconfirm -S gperf
		pacman --noconfirm -S bison
		;;

	Debian)
		apt-get -y install clang
		apt-get -y install gcc
		apt-get -y install cmake
		apt-get -y install automake
		apt-get -y install autoconf
		apt-get -y install make
		apt-get -y install sudo
		apt-get -y install gperf
		apt-get -y install bison
		;;

	Fedora)
		dnf -y install clang
		dnf -y install gcc
		dnf -y install cmake
		dnf -y install automake
		dnf -y install autoconf
		dnf -y install make
		dnf -y install sudo
		dnf -y install gperf
		dnf -y install bison
		;;

	Ubuntu)
		apt-get -y install clang
		apt-get -y install gcc
		apt-get -y install cmake
		apt-get -y install automake
		apt-get -y install autoconf
		apt-get -y install make
		apt-get -y install sudo
		apt-get -y install gperf
		apt-get -y install bison
		;;
esac
