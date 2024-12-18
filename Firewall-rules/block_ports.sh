#!/bin/bash

# Default policies to drop everything
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT ACCEPT

# Block FTP (port 21)
sudo iptables -A INPUT -p tcp --dport 21 -j REJECT

# Log dropped packets
sudo iptables -A INPUT -j LOG --log-prefix "Dropped packet: " --log-level 4
