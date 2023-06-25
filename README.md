# PiVPN-Script

Automated VPN Setup Script

This script automates the process of setting up VPN users, generating QR codes, starting Tor service, and copying configuration files. It simplifies the steps involved in creating VPN users and configuring the necessary services.

Features:
- Prompts for the desired username for the VPN.
- Creates a VPN user using PiVPN.
- Retrieves the QR code for the user.
- Checks and terminates any existing processes.
- Starts the Tor service and HTTP server for VPN configuration.
- Copies the most recent two configuration files to the Tor services folder.

Usage:
1. Run the script.
2. Enter the desired username for the VPN when prompted.
3. Follow the on-screen instructions to complete the setup.

Note: This script assumes CentOS 7 as the operating system and requires the PiVPN and Tor services to be installed beforehand.

Feel free to modify the script to fit your specific environment and requirements.

### Please don't forget to run this command after creating the file or downloading
### `chmod +x vpn.sh`
