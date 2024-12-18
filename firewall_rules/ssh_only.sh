#!/bin/bash

# Default policies to drop everything
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT ACCEPT

# Allow loopback (localhost) traffic
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A OUTPUT -o lo -j ACCEPT

# Allow SSH only from a specific IP (e.g., 192.168.1.100)
sudo iptables -A INPUT -p tcp --dport 22 -s 192.168.1.100 -j ACCEPT

# Log dropped packets
sudo iptables -A INPUT -j LOG --log-prefix "Dropped packet: " --log-level 4
