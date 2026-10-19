# OIBSIP-Task-2-UFW-Firewall
Oasis Infobyte Security Analyst Internship — Basic Firewall Configuration using UFW in Kali Linux.
# Oasis Infobyte Internship — Task 2
## Basic Firewall Configuration Using UFW

### Objective
Configure a Linux firewall using UFW (Uncomplicated Firewall) to control incoming network traffic.

### Environment
- Operating System: Kali Linux
- Virtualization: VMware Workstation
- Firewall: UFW
- Script: `ufw_configuration.sh`

### Firewall Rules

| Port | Protocol | Action | Purpose |
|---|---|---|---|
| 22 | TCP | Allow | SSH access |
| 80 | TCP | Deny | Block HTTP traffic |
| 443 | TCP | Allow | HTTPS traffic |
| 53 | TCP and UDP | Allow | DNS traffic |
| 23 | TCP | Deny | Block Telnet traffic |

### Default Policies
- Incoming connections: Denied by default
- Outgoing connections: Allowed by default
- UFW logging: Low

### Verification
The firewall was enabled and verified using `sudo ufw status verbose`. The configured rules were checked using `sudo ufw status numbered` and `sudo ufw show added`.

A local HTTP server responded to a request sent to `127.0.0.1`. This confirms local server functionality, but does not prove that the incoming HTTP-deny rule blocks connections from another machine. A separate incoming-traffic test is still required to verify that behavior.

### Script
The `ufw_configuration.sh` script applies the firewall rules, sets default policies, enables logging, activates UFW, and displays the final status.

### Conclusion
UFW was configured and activated with explicit allow and deny rules. Firewall status and rules were verified. Further testing from a separate machine is required to demonstrate actual incoming traffic blocking.

