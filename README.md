# Firewall-configuration
## Firewall Configuration Project using iptables

This project demonstrates how to configure a Linux server firewall using `iptables`. It includes scripts for setting up firewall rules, securing a web server, and restricting access to only necessary services such as HTTP, HTTPS, and SSH.

## Features
- Configures a secure web server with Apache or Nginx.
- Uses `iptables` to control network traffic and secure the server.
- Implements rules for:
  - Allowing HTTP (port 80) and HTTPS (port 443) traffic.
  - Allowing SSH (port 22) from trusted IPs only.
  - Blocking unnecessary services (FTP, SNMP, etc.).
- Provides sample scripts for setting up the firewall for different use cases.
  
### Prerequisites:
- A Linux machine (Ubuntu, CentOS, etc.)
- Root or sudo access to configure `iptables`
- Apache or Nginx installed if you're setting up a web server

- ## Setup Instructions

- ### 1. Clone the repository:
To get started, clone this repository to your local machine: git clone https://github.com/Anzil-cybersec/Firewall-configuration.git

- ### 2. Configure iptables:
Inside the firewall_rules/ folder, you will find various scripts for different configurations. You can choose and run the appropriate script based on your needs.
Default firewall rules: To set up basic security rules, use the default_rules.sh script: sudo bash firewall_rules/default_rules.sh
Allow SSH access from a specific IP: If you want to allow SSH only from a trusted IP, use ssh_only.sh: sudo bash firewall_rules/ssh_only.sh
Allow HTTP/HTTPS traffic: Use web_server.sh to configure your firewall to allow traffic on ports 80 and 443 for web servers: sudo bash firewall_rules/web_server.sh

- ### 3. Testing the firewall:
After configuring the firewall, you can test the setup using the test/ directory:

test_firewall.sh: This script tests if the firewall is correctly blocking and allowing traffic as expected: bash test/test_firewall.sh


- ### 4. Save your iptables rules:
To make sure your firewall rules persist after a reboot, save them using : sudo iptables-save > /etc/iptables/rules.v4
