#!/bin/sh

sysctl -w net.ipv4.ip_forward=1
 
openvpn --daemon --cd /etc/openvpn/client/ --config /home/node1/client.config --log-append /home/node1/client.log
 
iptables -t filter -I FORWARD -j ACCEPT
 
