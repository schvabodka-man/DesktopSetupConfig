#!/bin/sh

os=$(lsb_release -is)

#for development
case $os in
	Arch)
		pacman --noconfirm -S the_silver_searcher
		pacman --noconfirm -S python2-pip
		pacman --noconfirm -S python-pip
		pacman --noconfirm -S ruby
		pacman --noconfirm -S shellcheck
		pacman --noconfirm -S jdk9-openjdk
		pacman --noconfirm -S go
		pacman --noconfirm -S perl
		pacman --noconfirm -S texlive-most
		pacman --noconfirm -S rust
		pacman --noconfirm -S kotlin
		sudo -u user yaourt -S --noconfirm brainfuck
		pacman --noconfirm -S luarocks
		pacman --noconfirm -S scala
		pacman --noconfirm -S clojure
		pacman --noconfirm -S groovy
		pacman --noconfirm -S tidy
		;;

	Debian)
		apt-get -y install python-pip
		apt-get -y install python3-pip
		apt-get -y install ruby-all-dev
		apt-get -y install shellcheck
		apt-get -y install openjdk-9-jdk
		apt-get -y install golang
		apt-get -y install perl
		apt-get -y install texlive-full
		apt-get -y install cargo
		apt-get -y install software-properties-common
		apt-get -y install g++
		apt-get -y install hsbrainfuck
		apt-get -y install luarocks
		apt-get -y install scala
		apt-get -y install clojure
		apt-get -y install groovy
		apt-get -y install tidy
		;;

	Fedora)
		dnf -y install python-pip
		dnf -y install python3-pip
		dnf -y install ruby-devel
		dnf -y install ShellCheck
		dnf -y install java-1.8.0-openjdk-devel-debug
		dnf -y install golang
		dnf -y install cpan
		dnf -y install texlive-scheme-full
		dnf -y install cargo
		dnf -y install gcc-c++
		dnf -y install brainfuck
		dnf -y install texlive-collection-langcyrillic
		dnf -y install luarocks
		dnf -y install scala
		dnf -y install clojure
		dnf -y install groovy
		dnf -y install tidy
		;;

	Ubuntu)
		apt-get -y install python-pip
		apt-get -y install python3-pip
		apt-get -y install ruby-all-dev
		apt-get -y install shellcheck
		apt-get -y install openjdk-9-jdk
		apt-get -y install golang
		apt-get -y install perl
		apt-get -y install texlive-full
		apt-get -y install cargo
		apt-get -y install software-properties-common
		apt-get -y install g++
		apt-get -y install hsbrainfuck
		apt-get -y install luarocks
		apt-get -y install scala
		apt-get -y install clojure
		apt-get -y install groovy
		apt-get -y install tidy
		;;
esac

case $os in
	Arch)
		pacman --noconfirm -S groovy-docs
		;;

	Fedora)
		dnf -y install groovy-groovysh
		dnf -y install groovy-groovydoc
		dnf -y install groovy-console
		dnf -y install groovy-servlet
		dnf -y install groovy-docgenerator
		;;
esac
#nodejs in deb based is very funny to install properly
case $os in
	Arch)
		pacman --noconfirm -S npm
		;;

	Debian)
		curl -sL https://deb.nodesource.com/setup_8.x | bash -
		apt-get -y install nodejs
		;;

	Fedora)
		dnf -y install npm
		;;

	Ubuntu)
		curl -sL https://deb.nodesource.com/setup_8.x | bash -
		apt-get -y install nodejs
		;;
esac
