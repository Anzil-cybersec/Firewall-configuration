# Firewall-configuration
# Firewall Configuration Project using iptables

This project demonstrates how to configure a Linux server firewall using `iptables`. It includes scripts for setting up firewall rules, securing a web server, and restricting access to only necessary services such as HTTP, HTTPS, and SSH.

### Prerequisites:
- A Linux machine (Ubuntu, CentOS, etc.)
- Root or sudo access to configure `iptables`
- Apache or Nginx installed if you're setting up a web server

- ## Setup Instructions

- ### 1. Clone the repository:
To get started, clone this repository to your local machine: git clone https://github.com/Anzil-cybersec/Firewall-configuration.git

- ###2. Configure iptables:
Inside the firewall_rules/ folder, you will find various scripts for different configurations. You can choose and run the appropriate script based on your needs.

- ### 3. Testing the firewall:
After configuring the firewall, you can test the setup using the test/ directory:

test_firewall.sh: This script tests if the firewall is correctly blocking and allowing traffic as expected: bash test/test_firewall.sh
test_logs.sh: Check for any dropped packets in the logs: bash test/test_logs.sh

- ### 4. Logging:
The project logs firewall events such as dropped packets. Check the logs in the logs/ directory: cat logs/firewall_logs.txt

- ### 5. Save your iptables rules:
To make sure your firewall rules persist after a reboot, save them using : sudo iptables-save > /etc/iptables/rules.v4
