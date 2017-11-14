#!/bin/sh
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install emacs
sudo apt-get -y install calibre
sudo apt-get -y install aria2
#sudo apt-get -y install transmission-daemon
sudo apt-get -y install syncthing
sudo apt-get -y install cron
sudo apt-get -y install network-manager
sudo apt-get -y install cron-apt

mkdir ~/.emacs.d/
mkdir ~/Data/
cp init.el ~/.emacs.d/
mkdir ~/.config/aria2/
cp aria2.conf ~/.config/aria2/
sudo cp running.sh /bin/server-services-startup

# should replace this -i
sudo sed 's/#\?\(PermitRootLogin\s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(X11Forwarding\s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
# sudo sed 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config > sshd.txt
# sudo mv -f sshd.txt /etc/ssh/sshd_config
# sudo sed 's/#\?\(PubkeyAuthentication\s*\).*$/\1 yes/' /etc/ssh/sshd_config > sshd.txt
# sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(PermitEmptyPasswords \s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(MaxAuthTries \s*\).*$/\1 3/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(IgnoreRhosts \s*\).*$/\1 yes/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed '$ a Protocol 2' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
rm sshd.txt

currentusername=$(whoami)

sudo apt-get -y install docker.io
sudo usermod -aG docker $currentusername

sudo sh -c 'echo "MAILON=\"always\"" >> /etc/cron-apt/config'
sudo sh -c 'echo "MAILTO=\"scvhapps@gmail.com\"" >> /etc/cron-apt/config'
sudo sh -c "echo \"@reboot $currentusername server-services-startup\" >> /etc/crontab"

sudo systemctl enable cron
sudo systemctl enable docker

systemctl --user enable syncthing.service
systemctl --user start syncthing.service

sudo sh -c 'echo "/dev/sda1        /home/pi/Data       vfat    uid=1000,gid=1000,umask=0022,sync,auto,nosuid,rw,nouser 0   0" >> /etc/fstab'
sudo mount -a

sudo reboot
