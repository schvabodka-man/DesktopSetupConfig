#!/bin/sh

os=$(lsb_release -is)

vervivvaldi=1.12.955.48-1
cd /home/user/bin/
mkdir vivaldi
cd vivaldi
case $os in
	Arch)
		sudo -u user yaourt -S --noconfirm vivaldi
		sudo -u user yaourt -S --noconfirm vivaldi-ffmpeg-codecs
		;;

	Debian)
		wget "https://downloads.vivaldi.com/stable/vivaldi-stable_$vervivvaldi_amd64.deb"
		dpkg -i "vivaldi-stable_$vervivvaldi_amd64.deb"
		;;

	Fedora)
		wget "https://downloads.vivaldi.com/stable/vivaldi-stable-$vervivvaldi.x86_64.rpm"
		dnf install "vivaldi-stable-$vervivvaldi.x86_64.rpm"
		;;

	Ubuntu)
		wget "https://downloads.vivaldi.com/stable/vivaldi-stable_$vervivvaldi_amd64.deb"
		dpkg -i "vivaldi-stable_$vervivvaldi_amd64.deb"
		;;
esac
