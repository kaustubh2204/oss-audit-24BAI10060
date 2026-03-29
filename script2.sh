#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="git"

echo "Checking for package: $PACKAGE..."

# Check if package is installed (using dpkg for Ubuntu/Debian)
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "SUCCESS: $PACKAGE is installed."
    echo "------------------------------------------"
    # Show Version and License info
    apt-cache show $PACKAGE | grep -E 'Version|Homepage'
    echo "License: GPL-2.0 (GNU General Public License v2)"
else
    echo "ERROR: $PACKAGE is NOT installed."
    echo "Please run: sudo apt install git"
fi

echo "------------------------------------------"
# Case statement for package philosophy
case $PACKAGE in
    git)
        echo "Git: The version control tool Linus built when proprietary failed him." ;;
    mysql)
        echo "MySQL: Open source database at the heart of millions of apps." ;;
    apache2)
        echo "Apache: The web server that built the open internet." ;;
    *)
        echo "Software is the foundation of digital freedom." ;;
esac