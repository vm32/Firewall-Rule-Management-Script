# Firewall Rule Management Script

This repository contains a Bash script designed to facilitate the management of `iptables` firewall rules. It provides a user-friendly command-line interface for listing, adding, and deleting `iptables` rules.

## Features

- **List Current Rules**: Displays all current `iptables` rules with enhanced formatting for better readability.
- **Add New Rule**: Allows the user to add a new rule to the `iptables`, with inputs for chain, protocol, port, and action.
- **Delete Rule**: Enables the user to delete a specific rule by specifying the chain and rule number.

## Requirements

- `iptables` installed on your system.
- Bash shell environment.

## Usage

To use the script, follow these steps:

1. Clone the repository to your local machine:
   ```bash
   git clone git@github.com:vm32/Firewall-Rule-Management-Script.git
   chmod +x firewall_rules.sh
   sudo ./firewall_rules.sh
  ![image](https://github.com/vm32/Firewall-Rule-Management-Script/assets/21219411/b8e42372-a53c-4900-a1ed-ffe89d782abe)

# Compatible Linux Distributions

The iptables management script is compatible with a wide range of Linux distributions that support iptables and have a Bash shell environment. Below is a list of some popular distributions where the script should work without issues:

- **Ubuntu**: All recent and LTS (Long Term Support) versions.
- **Debian**: Stable, Testing, and Unstable branches.
- **Fedora**: Including current and some previous versions.
- **CentOS**: Versions 6, 7, and 8 (CentOS 8 has shifted to using `nftables` by default but iptables are still supported).
- **Red Hat Enterprise Linux (RHEL)**: Versions 6, 7, and 8 (Similar to CentOS, RHEL 8 uses `nftables` by default but supports iptables).
- **Arch Linux**: Rolling release model ensures up-to-date iptables and Bash versions.
- **Manjaro**: Based on Arch Linux, hence fully compatible.
- **openSUSE Leap** and **Tumbleweed**: Both the regular release and rolling release versions.
- **Mint**: Based on Ubuntu and Debian, so it's fully compatible.
- **Slackware**: One of the oldest distributions that still maintain iptables and Bash in its environment.

## Prerequisites

Before running the script, ensure that `iptables` is installed and that you have `sudo` or root access to manage firewall rules. Some distributions may use `nftables` as a default firewall management tool. In such cases, you might need to install `iptables` or use its compatibility layer.

## Note

This list includes distributions that are known to support iptables and Bash, but it's not exhaustive. The script may work on other distributions that meet these requirements. Always ensure that your system is up-to-date and has the necessary permissions to modify iptables rules.

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=vm32/Firewall-Rule-Management-Script&type=Date)](https://star-history.com/#vm32/Firewall-Rule-Management-Script&Date)


