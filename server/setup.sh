#!/bin/sh
sudo apt-get -y update
sudo apt-get -y upgrade

currentusername=$(whoami)

sudo apt-get -y install pass
sudo mount /dev/sda1 ~/Data

mkdir ~/.emacs.d/
mkdir ~/.ssh/
mkdir ~/Data/
mkdir ~/aria2
touch ~/aria2/session
cp init.el ~/.emacs.d/
mkdir ~/.config/aria2/
cp aria2.conf ~/.config/aria2/
sudo cp running.sh /bin/server-services-startup
sudo cp update-git-repos.fish /bin/git-update-personal-repos

#keys and shit, stored on seperate flash drive that should be inserted on setup
cp ~/Data/id_rsa.pub ~/.ssh/authorized_keys
sudo chmod 600 ~/.ssh/authorized_keys
#the key is actually used only for aria2 token
gpg2 --import ~/Data/vanya@server.com.asc
#trust and shit
gpg2 --edit-key "vanya@server.com"
#unix pass
cp -r ~/Data/password-store-server .password-store/
#user passwords
# echo "$currentusername:$(gpg2 -d ~/Data/upass.gpg)" | sudo chpasswd
# echo "root:$(gpg2 -d ~/Data/rpass.gpg)" | sudo chpasswd
sudo passwd root
sudo passwd $currentusername

sudo apt-get -y install apt-utils
sudo apt-get -y install emacs
sudo apt-get -y install calibre
sudo apt-get -y install aria2
sudo apt-get -y install transmission-daemon
sudo apt-get -y install syncthing
sudo apt-get -y install neofetch
sudo apt-get -y install cron
sudo apt-get -y install network-manager
sudo apt-get -y install cron-apt
sudo apt-get -y install fish
sudo apt-get -y install fail2ban
sudo apt-get -y install iptables

sudo systemctl disable transmission-daemon
sudo systemctl stop transmission-daemon

# should replace this with -i
sudo sed 's/#\?\(PermitRootLogin\s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(X11Forwarding\s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(PermitEmptyPasswords \s*\).*$/\1 no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(MaxAuthTries \s*\).*$/\1 3/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(IgnoreRhosts \s*\).*$/\1 yes/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed '$ a Protocol 2' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config
sudo sed 's/#\?\(PubkeyAuthentication\s*\).*$/\1 yes/' /etc/ssh/sshd_config > sshd.txt
sudo mv -f sshd.txt /etc/ssh/sshd_config

# mkdir ~/bin
# cd ~/bin/
# wget -O gitea https://dl.gitea.io/gitea/1.2.3/gitea-1.2.3-linux-arm-7
# chmod +x gitea

sudo apt-get -y install docker.io
sudo apt-get -y install docker-compose
sudo usermod -aG docker $currentusername
sudo systemctl enable docker

sudo apt-get install tor privoxy tor-geoipdb
sudo apt-get install obfs4proxy
sudo apt-get install proxychains
sudo sh -c "echo 'SocksPort 9050' >> /etc/tor/torrc"
sudo sh -c "echo 'ORPort auto' >> /etc/tor/torrc"
sudo sh -c "echo 'BridgeRelay 1' >> /etc/tor/torrc"
sudo sh -c "echo 'Exitpolicy reject *:*' >> /etc/tor/torrc"
sudo sh -c "echo 'ExtORPort auto' >> /etc/tor/torrc"
sudo sh -c "echo 'ServerTransportPlugin obfs4 exec /usr/bin/obfs4proxy' >> /etc/tor/torrc"
sudo systemctl enable tor

sudo sh -c 'echo "MAILON=\"always\"" >> /etc/cron-apt/config'
sudo sh -c 'echo "MAILTO=\"scvhapps@gmail.com\"" >> /etc/cron-apt/config'

sudo sh -c "echo \"@reboot $currentusername server-services-startup\" >> /etc/crontab"
sudo sh -c "echo \"@reboot root mount /dev/sda1 /home/$currentusername/Data\" >> /etc/crontab"
sudo sh -c "echo \"*/30 * * * * $currentusername git-update-personal-repos >/dev/null 2>&1\" >> /etc/crontab"

sudo systemctl enable cron

systemctl --user enable syncthing.service

sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sudo systemctl enable fail2ban

sudo chsh -s /usr/bin/fish $currentusername
sudo chsh -s /usr/bin/fish root

sudo reboot
