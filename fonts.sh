#fonts
os=$(lsb_release -is)

case $os in
	Arch)
		sudo pacman -Sy otf-fira-sans
		sudo pacman -Sy otf-fira-mono
		sudo pacman -Sy ttf-fira-mono
		sudo pacman -Sy ttf-fira-sans
		sudo pacman -Sy awesome-terminal-fonts
		yaourt -S --noconfirm otf-font-awesome
		yaourt -S --noconfirm ttf-font-awesome
		;;

	Debian)
		sudo apt-get -y install fonts-firacode
		sudo apt-get -y install fonts-font-awesome
		;;

	Fedora)
		sudo dnf -y install mozilla-fira-mono-fonts
		sudo dnf -y install mozilla-fira-sans-fonts
		sudo dnf -y install mozilla-fira-fonts-common
		sudo dnf -y install fontawesome-fonts
		;;
	Ubuntu)
		sudo apt-get -y install fonts-firacode
		sudo apt-get -y install fonts-font-awesome
		;;
esac

#some powerline
cd ~/bin/
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh

case $os in
	Arch)
		sudo pacman -Sy powerline-fonts
		;;

	Debian)
		sudo apt-get -y install fonts-powerline
		;;

	Fedora)
		sudo dnf -y install powerline-fonts
		;;

	Ubuntu)
		sudo apt-get -y install fonts-powerline
esac
