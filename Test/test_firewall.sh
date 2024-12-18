#!/bin/bash

echo "Testing firewall rules..."

# Test HTTP access
curl -I http://localhost

# Test SSH access (replace with your own test IP or localhost)
ssh -o BatchMode=yes user@localhost "exit"

# Check for dropped packets in the logs
cat logs/firewall_logs.txt | grep "Dropped packet"
#!/bin/bash

echo "Testing firewall rules..."

# Test HTTP access
curl -I http://localhost

# Test SSH access (replace with your own test IP or localhost)
ssh -o BatchMode=yes user@localhost "exit"

# Check for dropped packets in the logs
cat logs/firewall_logs.txt | grep "Dropped packet"
