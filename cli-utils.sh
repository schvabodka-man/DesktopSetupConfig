#!/bin/sh

os=$(lsb_release -is)

case $os in
	Arch)
		sudo pacman --noconfirm -S gnupg --state present
		;;

	Debian)
		sudo apt-get -y install gnupg2
		sudo apt-get -y install gnupg
		;;

	Fedora)
		sudo dnf -y install gnupg2
		sudo dnf -y install gnupg
		;;

	Ubuntu)
		sudo apt-get -y install gnupg2
		sudo apt-get -y install gnupg
		;;
esac

case $os in
	Arch)
		sudo pacman --noconfirm -S the_silver_searcher
		sudo pacman --noconfirm -S hunspell
		sudo pacman --noconfirm -S hunspell-en
		yaourt -S --noconfirm hunspell-ru
		;;

	Debian)
		sudo apt-get -y install silversearcher-ag
		sudo apt-get -y install hunspell
		#russian disctionary for hunspellb
		sudo apt-get -y install hunspell-ru
		;;

	Fedora)
		sudo dnf -y install the_silver_searcher
		sudo dnf -y install hunspell
		#russian disctionary for hunspell
		sudo dnf -y install hunspell-ru
		;;

	Ubuntu)
		sudo apt-get -y install silversearcher-ag
		sudo apt-get -y install hunspell
		#russian disctionary for hunspell
		sudo apt-get -y install hunspell-ru
		;;
esac

case $os in
	Arch)
		sudo pacman --noconfirm -S pass
		sudo pacman --noconfirm -S tmux
		sudo pacman --noconfirm -S git
		sudo pacman --noconfirm -S mercurial
		sudo pacman --noconfirm -S fossil
		sudo pacman --noconfirm -S feh
		sudo pacman --noconfirm -S shntool
		sudo pacman --noconfirm -S cuetools
		sudo pacman --noconfirm -S curl
		sudo pacman --noconfirm -S wget
		sudo pacman --noconfirm -S htop
		sudo pacman --noconfirm -S cloc
		sudo pacman --noconfirm -S pandoc
		sudo pacman --noconfirm -S unrar
		sudo pacman --noconfirm -S unzip
		sudo pacman --noconfirm -S p7zip
		sudo pacman --noconfirm -S source-highlight
		sudo pacman --noconfirm -S colordiff
		sudo pacman --noconfirm -S xsel
		sudo pacman --noconfirm -S youtube-dl
		sudo pacman --noconfirm -S scrot
		sudo pacman --noconfirm -S mpv
		sudo pacman --noconfirm -S dzen2
		sudo pacman --noconfirm -S aria2
		sudo pacman --noconfirm -S i3lock
		sudo pacman --noconfirm -S mediainfo
		sudo pacman --noconfirm -S tmux
		sudo pacman --noconfirm -S offlineimap
		sudo pacman --noconfirm -S w3m
		;;

	Debian)
		sudo apt-get -y install pass
		sudo apt-get -y install tmux
		sudo apt-get -y install git
		sudo apt-get -y install mercurial
		sudo apt-get -y install fossil
		sudo apt-get -y install feh
		sudo apt-get -y install shntool
		sudo apt-get -y install cuetools
		sudo apt-get -y install curl
		sudo apt-get -y install wget
		sudo apt-get -y install htop
		sudo apt-get -y install cloc
		sudo apt-get -y install pandoc
		sudo apt-get -y install unrar
		sudo apt-get -y install unzip
		sudo apt-get -y install p7zip
		sudo apt-get -y install source-highlight
		sudo apt-get -y install colordiff
		sudo apt-get -y install xsel
		sudo apt-get -y install youtube-dl
		sudo apt-get -y install scrot
		sudo apt-get -y install mpv
		sudo apt-get -y install dzen2
		sudo apt-get -y install aria2
		sudo apt-get -y install i3lock
		sudo apt-get -y install mediainfo
		sudo apt-get -y install tmux
		sudo apt-get -y install offlineimap
		sudo apt-get -y install w3m
		sudo apt-get -y install w3m-img
		;;

	Fedora)
		sudo dnf -y install pass
		sudo dnf -y install tmux
		sudo dnf -y install git
		sudo dnf -y install mercurial
		sudo dnf -y install fossil
		sudo dnf -y install feh
		sudo dnf -y install shntool
		sudo dnf -y install cuetools
		sudo dnf -y install curl
		sudo dnf -y install wget
		sudo dnf -y install htop
		sudo dnf -y install cloc
		sudo dnf -y install pandoc
		sudo dnf -y install unrar
		sudo dnf -y install unzip
		sudo dnf -y install p7zip
		sudo dnf -y install source-highlight
		sudo dnf -y install colordiff
		sudo dnf -y install xsel
		sudo dnf -y install youtube-dl
		sudo dnf -y install scrot
		sudo dnf -y install mpv
		sudo dnf -y install dzen2
		sudo dnf -y install aria2
		sudo dnf -y install i3lock
		sudo dnf -y install mediainfo
		sudo dnf -y install tmux
		sudo dnf -y install offlineimap
		sudo dnf -y install w3m
		sudo dnf -y install w3m-img
		;;

	Ubuntu)
		sudo apt-get -y install pass
		sudo apt-get -y install tmux
		sudo apt-get -y install git
		sudo apt-get -y install mercurial
		sudo apt-get -y install fossil
		sudo apt-get -y install feh
		sudo apt-get -y install shntool
		sudo apt-get -y install cuetools
		sudo apt-get -y install curl
		sudo apt-get -y install wget
		sudo apt-get -y install htop
		sudo apt-get -y install cloc
		sudo apt-get -y install pandoc
		sudo apt-get -y install unrar
		sudo apt-get -y install unzip
		sudo apt-get -y install p7zip
		sudo apt-get -y install source-highlight
		sudo apt-get -y install colordiff
		sudo apt-get -y install xsel
		sudo apt-get -y install youtube-dl
		sudo apt-get -y install scrot
		sudo apt-get -y install mpv
		sudo apt-get -y install dzen2
		sudo apt-get -y install aria2
		sudo apt-get -y install i3lock
		sudo apt-get -y install mediainfo
		sudo apt-get -y install tmux
		sudo apt-get -y install offlineimap
		sudo apt-get -y install w3m
		sudo apt-get -y install w3m-img
		;;
esac

case $os in
	Arch)
		sudo pacman --noconfirm -S mu
		;;

	Debian)
		sudo apt-get -y install maildir-utils
		sudo apt-get -y install mu4e
		;;

	Fedora)
		sudo dnf -y copr enable jamesd/maildir-utils
		sudo dnf -y install maildir-utils emacs-mu4e
		;;

	Ubuntu)
		sudo apt-get -y install maildir-utils
		sudo apt-get -y install mu4e
		;;
esac
case $os in
	Arch)
		sudo pacman --noconfirm -S beets
		;;

	Debian)
		sudo apt-get -y install beets
		sudo apt-get -y install beets-doc
		;;

	Fedora)
		sudo dnf -y install beets
		sudo dnf -y install beets-doc
		sudo dnf -y install beets-plugins
		;;

	Ubuntu)
		sudo apt-get -y install beets
		sudo apt-get -y install beets-doc
		;;
esac
case $os in
	Arch)
		sudo pacman --noconfirm -S hub
		;;

	Fedora)
		sudo dnf -y install install hub
		;;
esac

case $os in
	Arch)
		yaourt -S --noconfirm transmission-remote-gui-gtk2
		sudo pacman --noconfirm -S transmission-cli
		;;

	Debian)
		sudo apt-get -y install transmission-remote-gtk
		sudo apt-get -y install transmission-daemon
		;;

	Fedora)
		sudo dnf -y install transmission-remote-gtk
		sudo dnf -y install transmission-daemon
		;;

	Ubuntu)
		sudo apt-get -y install transmission-remote-gtk
		sudo apt-get -y install transmission-daemon
		;;
esac

#parsers for ansiweather
case $os in
	Arch)
		sudo pacman --noconfirm -S jq
		sudo pacman --noconfirm -S bc
		;;

	Debian)
		sudo apt-get -y install jq
		sudo apt-get -y install bc
		;;

	Fedora)
		sudo dnf -y install jq
		sudo dnf -y install bc
		;;

	Ubuntu)
		sudo apt-get -y install jq
		sudo apt-get -y install bc
		;;
esac

#colorized output for many of things
case $os in
	Arch)
		sudo pacman --noconfirm grc
		;;

	Debian)
		sudo apt-get -y install grc
		;;

	Ubuntu)
		sudo apt-get -y install grc
		;;

	Fedora)
		cd ~/bin/
		git clone https://github.com/garabik/grc.git
		cd grc
		./install.sh
		;;

esac
