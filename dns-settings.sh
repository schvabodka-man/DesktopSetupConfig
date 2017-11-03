#!/bin/sh
nmcli connection mod "Wi-Fi connection 1" ipv4.dns "82.229.244.191 78.159.101.37 207.192.69.155"
nmcli connection mod "docker0" ipv4.dns "82.229.244.191 78.159.101.37 207.192.69.155"
