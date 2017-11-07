#!/bin/sh

os=$(lsb_release -is)

case $os in
	Fedora|Ubuntu|Debian)
		curl -sSL https://get.docker.com | sh
		;;
esac
