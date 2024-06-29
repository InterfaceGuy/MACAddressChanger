#!/bin/bash

# Function to generate a random MAC address
generate_mac() {
    hexchars="0123456789ABCDEF"
    echo $(for i in {1..6}; do echo -n ${hexchars:$((RANDOM % 16)):1}; done | sed -e 's/\(..\)/\1:/g' -e 's/:$//')
}

# Get the current active network interface
interface=$(networksetup -listallhardwareports | awk '/Wi-Fi|AirPort/{getline; print $2}')

# Generate a new MAC address
new_mac=$(generate_mac)

# Display the current MAC address
echo "Current MAC address for $interface: $(ifconfig $interface | awk '/ether/{print $2}')"

# Change the MAC address
sudo ifconfig $interface ether $new_mac

# Verify the change
echo "New MAC address for $interface: $(ifconfig $interface | awk '/ether/{print $2}')"