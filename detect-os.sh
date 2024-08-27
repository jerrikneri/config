#!/bin/bash

# Determine the OS
os_name=$(uname -s)
os_version=$(lsb_release -c | awk '{print $2}' 2>/dev/null)  # For Ubuntu/Debian-based systems

case "$os_name" in
    Darwin)
        echo "Detected macOS"
        # Call macOS install script
        ./install_macOS.sh
        ;;

    Linux)
        if [[ -f /etc/os-release ]]; then
            . /etc/os-release
            case "$ID" in
                arch|archarm)
                    echo "Detected Arch Linux"
                    # Call Arch Linux install script
                    ./install_arch.sh
                    ;;
                
                ubuntu|debian)
                    echo "Detected Ubuntu/Debian"
                    # Call Ubuntu install script
                    ./install_ubuntu.sh
                    ;;
                
                *)
                    echo "Unsupported Linux distribution: $ID"
                    ;;
            esac
        else
            echo "Unsupported Linux distribution"
        fi
        ;;
    
    *)
        echo "Unsupported OS: $os_name"
        ;;
esac
