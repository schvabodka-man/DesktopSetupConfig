#!/bin/sh

os=$(lsb_release -is)

idea=2017.2.5

case $os in
	Arch)
		# pacman --noconfirm -S eclipse-java
		sudo -u user yaourt -S --noconfirm intellij-idea-ultimate-edition
		sudo -u user yaourt -S --noconfirm android-studio
		sudo -u user yaourt -S --noconfirm android-sdk
		;;

	Debian)
		cd /home/user/bin/
		wget "https://download.jetbrains.com/idea/ideaIU-$idea.tar.gz"
		tar xzf "ideaIU-$idea.tar.gz"
		mv idea-* idea
		# apt-get -y install eclipse
		;;

	Fedora)
		# dnf -y install eclipse
		cd /home/user/bin/
		wget "https://download.jetbrains.com/idea/ideaIU-$idea.tar.gz"
		tar xzf "ideaIU-$idea.tar.gz"
		mv idea-* idea
		;;

	Ubuntu)
		# apt-get -y install eclipse
		apt-get -y install ubuntu-make
		sudo -u user umake android
		sudo -u user umake ide idea-ultimate
		;;
esac

# cd /home/user/bin/
# mkdir eclim
# wget -O eclipse.tar.gz http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/oxygen/1a/eclipse-jee-oxygen-1a-linux-gtk-x86_64.tar.gz\&r=1
# tar xzf eclipse.tar.gz

# cd eclim
# wget https://github.com/ervandew/eclim/releases/download/2.7.0/eclim_2.7.0.jar
# sudo -u user java -Dvim.skip=true -Declipse.home=/home/user/bin/eclipse -jar eclim_2.7.0.jar install
