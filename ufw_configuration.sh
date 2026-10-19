
#!/bin/bash
set -e

# Configure UFW firewall rules
sudo ufw allow 22/tcp
sudo ufw deny 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 53
sudo ufw deny 23/tcp

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Enable logging and the firewall
sudo ufw logging low
sudo ufw --force enable

# Display final status
sudo ufw status verbose

