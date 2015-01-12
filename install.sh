#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    echo "You must be a root user" 2>&1
    exit 1
fi

chmod +x killr.sh
sudo cp killr.sh /usr/local/bin/killr

echo "Installed to /usr/local/bin/killr"
