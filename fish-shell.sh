#!/bin/sh

os=$(lsb_release -is)

case $os in
	Arch)
		pacman --noconfirm -S fish --state present
		;;

	Debian)
		apt-get -y install fish --state present
		;;

	Fedora)
		dnf -y install fish --state present
		;;

	Ubuntu)
		apt-get -y install fish --state present
		;;
esac

chsh -s /usr/bin/fish user
chsh -s /usr/bin/fish root
curl -L http://get.oh-my.fish | fish
omf install bobthefish
omf install sudope
omf install z
# git clone http://github.com/techwizrd/fishmarks.git /home/user/.fishmarks
curl --create-dirs -o /home/user/bin/up/up.fish https://raw.githubusercontent.com/shannonmoeller/up/master/up.fish
curl --create-dirs -o /home/user/bin/pip-fish/pip.fish https://raw.githubusercontent.com/d42/fish-pip-completion/master/pip.fish
git clone https://github.com/barnybug-archive/docker-fish-completion.git /home/user/bin/docker-fish
curl --create-dirs -o /home/user/bin/hub-fish/hub.fish https://raw.githubusercontent.com/github/hub/master/etc/hub.fish_completion
#transfer.sh alias
curl --create-dirs -o /home/user/bin/transfersh/transfer.fish https://gist.githubusercontent.com/nl5887/a511f172d3fb3cd0e42d/raw/d2f8a07aca44aa612b6844d8d5e53a05f5da3420/transfer.fish
