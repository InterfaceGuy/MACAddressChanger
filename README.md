# Change MAC Address Script

This repository contains a simple Bash script to change the MAC address on a Mac to a valid new MAC address.

## Usage

Follow these steps to use the script:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/change-mac-address.git
   cd change-mac-address
   ```

2. **Make the script executable:**
   ```bash
   chmod +x change_mac.sh
   ```

3. **Run the script:**
   ```bash
   sudo ./change_mac.sh
   ```

The script will:
- Display the current MAC address of the active Wi-Fi interface.
- Generate a random valid MAC address.
- Change the MAC address of the active Wi-Fi interface to the newly generated one.
- Display the new MAC address.

## Requirements

- macOS with administrative privileges (required to change the MAC address).
- Bash shell.

## Notes

- You may need to re-enable the script's executable permissions (`chmod +x change_mac.sh`) if transferring to a new machine.
- This script specifically targets the active Wi-Fi interface, identified by `networksetup`.

## Disclaimer

Use this script responsibly. Changing your MAC address can have implications for network security and privacy. Always ensure you have the necessary permissions to modify network settings on the machine you are using.