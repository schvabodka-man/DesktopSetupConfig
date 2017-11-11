#!/bin/sh

os=$(lsb_release -is)

case $os in
	Arch)
		sudo pacman --noconfirm -S fish
		;;

	Debian)
		sudo apt-get -y install fish
		;;

	Fedora)
		sudo dnf -y install fish
		;;

	Ubuntu)
		sudo apt-get -y install fish
		;;
esac

chsh -s /usr/bin/fish user
chsh -s /usr/bin/fish root
curl -L http://get.oh-my.fish | fish
omf install bobthefish
omf install sudope
omf install z
# git clone http://github.com/techwizrd/fishmarks.git ~/.fishmarks
curl --create-dirs -o ~/bin/up/up.fish https://raw.githubusercontent.com/shannonmoeller/up/master/up.fish
curl --create-dirs -o ~/bin/pip-fish/pip.fish https://raw.githubusercontent.com/d42/fish-pip-completion/master/pip.fish
git clone https://github.com/barnybug-archive/docker-fish-completion.git ~/bin/docker-fish
curl --create-dirs -o ~/bin/hub-fish/hub.fish https://raw.githubusercontent.com/github/hub/master/etc/hub.fish_completion
#transfer.sh alias
curl --create-dirs -o ~/bin/transfersh/transfer.fish https://gist.githubusercontent.com/nl5887/a511f172d3fb3cd0e42d/raw/d2f8a07aca44aa612b6844d8d5e53a05f5da3420/transfer.fish
