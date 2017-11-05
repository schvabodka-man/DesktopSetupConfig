#!/bin/sh

os=$(lsb_release -is)

case $os in
	Arch)
		pacman --noconfirm -S gnupg --state present
		;;

	Debian)
		apt-get -y install gnupg2
		apt-get -y install gnupg
		;;

	Fedora)
		dnf -y install gnupg2
		dnf -y install gnupg
		;;

	Ubuntu)
		apt-get -y install gnupg2
		apt-get -y install gnupg
		;;
esac

case $os in
	Arch)
		pacman --noconfirm -S the_silver_searcher
		pacman --noconfirm -S hunspell
		pacman --noconfirm -S hunspell-en
		sudo -u user yaourt -S --noconfirm hunspell-ru
		;;

	Debian)
		apt-get -y install silversearcher-ag
		apt-get -y install hunspell
		#russian disctionary for hunspellb
		apt-get -y install hunspell-ru
		;;

	Fedora)
		dnf -y install the_silver_searcher
		dnf -y install hunspell
		#russian disctionary for hunspell
		dnf -y install hunspell-ru
		;;

	Ubuntu)
		apt-get -y install silversearcher-ag
		apt-get -y install hunspell
		#russian disctionary for hunspell
		apt-get -y install hunspell-ru
		;;
esac

case $os in
	Arch)
		pacman --noconfirm -S pass
		pacman --noconfirm -S tmux
		pacman --noconfirm -S git
		pacman --noconfirm -S mercurial
		pacman --noconfirm -S fossil
		pacman --noconfirm -S feh
		pacman --noconfirm -S shntool
		pacman --noconfirm -S cuetools
		pacman --noconfirm -S curl
		pacman --noconfirm -S wget
		pacman --noconfirm -S htop
		pacman --noconfirm -S cloc
		pacman --noconfirm -S pandoc
		pacman --noconfirm -S unrar
		pacman --noconfirm -S unzip
		pacman --noconfirm -S p7zip
		pacman --noconfirm -S source-highlight
		pacman --noconfirm -S colordiff
		pacman --noconfirm -S xsel
		pacman --noconfirm -S youtube-dl
		pacman --noconfirm -S scrot
		pacman --noconfirm -S mpv
		pacman --noconfirm -S dzen2
		pacman --noconfirm -S aria2
		pacman --noconfirm -S i3lock
		pacman --noconfirm -S mediainfo
		pacman --noconfirm -S tmux
		pacman --noconfirm -S offlineimap
		pacman --noconfirm -S w3m
		;;

	Debian)
		apt-get -y install pass
		apt-get -y install tmux
		apt-get -y install git
		apt-get -y install mercurial
		apt-get -y install fossil
		apt-get -y install feh
		apt-get -y install shntool
		apt-get -y install cuetools
		apt-get -y install curl
		apt-get -y install wget
		apt-get -y install htop
		apt-get -y install cloc
		apt-get -y install pandoc
		apt-get -y install unrar
		apt-get -y install unzip
		apt-get -y install p7zip
		apt-get -y install source-highlight
		apt-get -y install colordiff
		apt-get -y install xsel
		apt-get -y install youtube-dl
		apt-get -y install scrot
		apt-get -y install mpv
		apt-get -y install dzen2
		apt-get -y install aria2
		apt-get -y install i3lock
		apt-get -y install mediainfo
		apt-get -y install tmux
		apt-get -y install offlineimap
		apt-get -y install w3m
		apt-get -y install w3m-img
		;;

	Fedora)
		dnf -y install pass
		dnf -y install tmux
		dnf -y install git
		dnf -y install mercurial
		dnf -y install fossil
		dnf -y install feh
		dnf -y install shntool
		dnf -y install cuetools
		dnf -y install curl
		dnf -y install wget
		dnf -y install htop
		dnf -y install cloc
		dnf -y install pandoc
		dnf -y install unrar
		dnf -y install unzip
		dnf -y install p7zip
		dnf -y install source-highlight
		dnf -y install colordiff
		dnf -y install xsel
		dnf -y install youtube-dl
		dnf -y install scrot
		dnf -y install mpv
		dnf -y install dzen2
		dnf -y install aria2
		dnf -y install i3lock
		dnf -y install mediainfo
		dnf -y install tmux
		dnf -y install offlineimap
		dnf -y install w3m
		dnf -y install w3m-img
		;;

	Ubuntu)
		apt-get -y install pass
		apt-get -y install tmux
		apt-get -y install git
		apt-get -y install mercurial
		apt-get -y install fossil
		apt-get -y install feh
		apt-get -y install shntool
		apt-get -y install cuetools
		apt-get -y install curl
		apt-get -y install wget
		apt-get -y install htop
		apt-get -y install cloc
		apt-get -y install pandoc
		apt-get -y install unrar
		apt-get -y install unzip
		apt-get -y install p7zip
		apt-get -y install source-highlight
		apt-get -y install colordiff
		apt-get -y install xsel
		apt-get -y install youtube-dl
		apt-get -y install scrot
		apt-get -y install mpv
		apt-get -y install dzen2
		apt-get -y install aria2
		apt-get -y install i3lock
		apt-get -y install mediainfo
		apt-get -y install tmux
		apt-get -y install offlineimap
		apt-get -y install w3m
		apt-get -y install w3m-img
		;;
esac

case $os in
	Arch)
		pacman --noconfirm -S mu
		;;

	Debian)
		apt-get -y install maildir-utils
		apt-get -y install mu4e
		;;

	Fedora)
		dnf -y copr enable jamesd/maildir-utils
		dnf -y install maildir-utils emacs-mu4e
		;;

	Ubuntu)
		apt-get -y install maildir-utils
		apt-get -y install mu4e
		;;
esac
case $os in
	Arch)
		pacman --noconfirm -S beets
		;;

	Debian)
		apt-get -y install beets
		apt-get -y install beets-doc
		;;

	Fedora)
		dnf -y install beets
		dnf -y install beets-doc
		dnf -y install beets-plugins
		;;

	Ubuntu)
		apt-get -y install beets
		apt-get -y install beets-doc
		;;
esac
case $os in
	Arch)
		pacman --noconfirm -S hub
		;;

	Fedora)
		dnf -y install install hub
		;;
esac

case $os in
	Arch)
		sudo -u user yaourt -S --noconfirm transmission-remote-gui-gtk2
		pacman --noconfirm -S transmission-cli
		;;

	Debian)
		apt-get -y install transmission-remote-gtk
		apt-get -y install transmission-daemon
		;;

	Fedora)
		dnf -y install transmission-remote-gtk
		dnf -y install transmission-daemon
		;;

	Ubuntu)
		apt-get -y install transmission-remote-gtk
		apt-get -y install transmission-daemon
		;;
esac

#parsers for ansiweather
case $os in
	Arch)
		pacman --noconfirm -S jq
		pacman --noconfirm -S bc
		;;

	Debian)
		apt-get -y install jq
		apt-get -y install bc
		;;

	Fedora)
		dnf -y install jq
		dnf -y install bc
		;;

	Ubuntu)
		apt-get -y install jq
		apt-get -y install bc
		;;
esac

#colorized output for many of things
case $os in
	Arch)
		pacman --noconfirm grc
		;;

	Debian)
		apt-get -y install
		;;

	Ubuntu)
		apt-get -y install
		;;

	Fedora)
		cd /home/user/bin/
		git clone https://github.com/garabik/grc.git
		cd grc
		./install.sh
		;;

esac
