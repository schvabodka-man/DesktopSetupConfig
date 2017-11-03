#!/bin/sh
os=$(lsb_release -is)

case $os in
	Arch)
		pacman --noconfirm -S libpng
		pacman --noconfirm -S zlib
		pacman --noconfirm -S poppler
		pacman --noconfirm -S poppler-glib
		pacman --noconfirm -S poppler-data
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
		apt-get -y install libpng-dev
		apt-get -y install zlib1g-dev
		apt-get -y install libpoppler-glib-dev
		apt-get -y install libpoppler-private-dev
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
		dnf -y install zlib-devel
		dnf -y install poppler-glib-devel
		dnf -y install libpng-devel
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
		apt-get -y install libpng-dev
		apt-get -y install zlib1g-dev
		apt-get -y install libpoppler-glib-dev
		apt-get -y install libpoppler-private-dev
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
#emacs pdf utils
case $os in
	Arch)
		pacman --noconfirm -S libpng
		pacman --noconfirm -S zlib
		pacman --noconfirm -S poppler
		pacman --noconfirm -S poppler-glib
		pacman --noconfirm -S poppler-data
		;;

	Debian)
		apt-get -y install libpng-dev
		apt-get -y install zlib1g-dev
		apt-get -y install libpoppler-glib-dev
		apt-get -y install libpoppler-private-dev
		;;

	Fedora)
		dnf -y install zlib-devel
		dnf -y install poppler-glib-devel
		dnf -y install libpng-devel
		;;

	Ubuntu)
		apt-get -y install libpng-dev
		apt-get -y install zlib1g-dev
		apt-get -y install libpoppler-glib-dev
		apt-get -y install libpoppler-private-dev
		;;
esac
#imlib for compiling icat
case $os in
	Arch)
		pacman --noconfirm -S
		;;

	Debian)
		apt-get -y install libimlib2-dev
		;;

	Fedora)
		dnf -y install imlib2-devel
		;;

	Ubuntu)
		apt-get -y install libimlib2-dev
		;;
esac
#for ls with icons
case $os in
	Arch)
		pacman --noconfirm -S gettext
		pacman --noconfirm -S texinfo
		pacman --noconfirm -S texi2html
		;;

	Debian)
		apt-get -y install gettext
		apt-get -y install autopoint
		apt-get -y install texinfo
		apt-get -y install texi2html
		;;

	Fedora)
		dnf -y install gettext-devel
		dnf -y install texinfo
		dnf -y install texi2html
		;;

	Ubuntu)
		apt-get -y install gettext
		apt-get -y install autopoint
		apt-get -y install texinfo
		apt-get -y install texi2html
		;;
esac
