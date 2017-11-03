#fonts
os=$(lsb_release -is)

case $os in
	Arch)
		pacman -Sy otf-fira-sans --state present
		pacman -Sy otf-fira-mono --state present
		pacman -Sy ttf-fira-mono --state present
		pacman -Sy ttf-fira-sans --state present
		pacman -Sy awesome-terminal-fonts --state present
		sudo -u user yaourt -S --noconfirm otf-font-awesome
		sudo -u user yaourt -S --noconfirm ttf-font-awesome
		;;

	Debian)
		apt-get -y install fonts-firacode --state present
		apt-get -y install fonts-font-awesome --state present
		;;

	Fedora)
		dnf -y install mozilla-fira-mono-fonts --state present
		dnf -y install mozilla-fira-sans-fonts --state present
		dnf -y install mozilla-fira-fonts-common --state present
		dnf -y install fontawesome-fonts --state present
		;;
	Ubuntu)
		apt-get -y install fonts-firacode --state present
		apt-get -y install fonts-font-awesome --state present
		;;
esac

#some powerline
cd /home/user/bin/
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh

case $os in
	Arch)
		pacman -Sy powerline-fonts
		;;

	Debian)
		apt-get -y install fonts-powerline
		;;

	Fedora)
		dnf -y install powerline-fonts
		;;

	Ubuntu)
		apt-get -y install fonts-powerline
esac
