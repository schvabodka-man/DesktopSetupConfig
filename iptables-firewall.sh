#!/bin/sh

sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A OUTPUT -o lo -j ACCEPT

#pring
sudo iptables -A INPUT -p icmp -m state --state NEW --icmp-type 8 -j ACCEPT
sudo iptables -A INPUT -p icmp -m state --state ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A OUTPUT -p icmp -j ACCEPT

#http
sudo iptables -A INPUT -p tcp -m state --state ESTABLISHED,RELATED --sport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp -m state --state ESTABLISHED,RELATED --sport 443 -j ACCEPT
sudo iptables -A OUTPUT -p tcp -m tcp --dport 80 -j ACCEPT
sudo iptables -A OUTPUT -p tcp -m tcp --dport 443 -j ACCEPT

#dns
sudo iptables -A INPUT -i ens3 -s 192.168.1.1 -p udp --sport 53 -m state --state ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A OUTPUT -o ens3 -d 192.168.1.1 -p udp --dport 53 -m udp -j ACCEPT

#ntp
sudo iptables -A INPUT -p udp -m state --state ESTABLISHED,RELATED --dport 123 -j ACCEPT
sudo iptables -A OUTPUT -p udp -m udp --sport 123 -j ACCEPT

#cups
sudo iptables -A INPUT -p udp -m udp --dport 631 -j ACCEPT
sudo iptables -A INPUT -p tcp -m tcp --dport 631 -j ACCEPT
sudo iptables -A OUTPUT -p udp -m udp --sport 631 -j ACCEPT
sudo iptables -A OUTPUT -p tcp -m tcp --sport 631 -j ACCEPT

# IMAP
sudo iptables -A INPUT -p tcp -m state --state ESTABLISHED,RELATED --sport 993 -j ACCEPT
sudo iptables -A OUTPUT -p tcp -m tcp --dport 993 -j ACCEPT

# POP3
sudo iptables -A INPUT -p tcp -m state --state ESTABLISHED,RELATED --sport 995 -j ACCEPT
sudo iptables -A OUTPUT -p tcp -m tcp --dport 995 -j ACCEPT

# SMTP
sudo iptables -A INPUT -p tcp -m state --state ESTABLISHED,RELATED --sport 465 -j ACCEPT
sudo iptables -A OUTPUT -p tcp -m tcp --dport 465 -j ACCEPT

# SSH
sudo iptables -A OUTPUT -o ens3 -p tcp -m state --state NEW,ESTABLISHED --dport 22 -j ACCEPT
sudo iptables -A INPUT -i ens3 -p tcp -m state --state ESTABLISHED --sport 22 -j ACCEPT

#Dhcp
sudo iptables -A INPUT -p udp -m state --state ESTABLISHED,RELATED --sport 67:68 -j ACCEPT
sudo iptables -A OUTPUT -p udp -m udp --dport 67:68 -j ACCEPT

sudo iptables -A INPUT -j REJECT
sudo iptables -A FORWARD -j REJECT
sudo iptables -A OUTPUT -j REJECT
