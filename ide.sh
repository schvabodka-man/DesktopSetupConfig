#!/bin/sh

os=$(lsb_release -is)

#intellij/android studio
case $os in
	Arch)
		sudo -u user yaourt -S --noconfirm intellij-idea-ultimate-edition
		sudo -u user yaourt -S --noconfirm android-studio
		sudo -u user yaourt -S --noconfirm android-sdk
		;;

	Debian)
		cd /home/user/bin/

		;;

	Fedora)
		cd /home/user/bin/

		;;

	Ubuntu)
		apt-get -y install ubuntu-make
		sudo -u user umake android
		sudo -u user umake ide idea-ultimate
		;;
esac
