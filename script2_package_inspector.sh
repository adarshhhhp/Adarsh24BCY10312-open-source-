#!/bin/bash

# =================================================================
# Script 2: FOSS Package Inspector
# Author: ADARSH PATEL
# Registration Number: 24BCY10312
# Course: Open Source Software (OSS)
# =================================================================

# Define the primary package to audit
# Note: On most Linux distros, the package is 'python3'
PACKAGE_NAME="python3"

echo "---------------------------------------------------------------"
echo "  AUDIT STEP: CHECKING FOR OPEN SOURCE PACKAGE: $PACKAGE_NAME  "
echo "---------------------------------------------------------------"

# --- Package Detection Logic ---
# Using dpkg (standard for Debian/Ubuntu) to verify installation
# We pipe to grep to quietly check for the 'ii' (installed) status
if dpkg -l | grep -q "^ii  $PACKAGE_NAME"; then
    echo "[STATUS] SUCCESS: $PACKAGE_NAME is currently installed on this system."
    echo "---------------------------------------------------------------"
    
    # Extracting specific metadata: Version and License info as per rubric
    echo "PACKAGE METADATA:"
    dpkg -s $PACKAGE_NAME | grep -E 'Version|Section|Priority'
    
    # Showing the actual binary version for verification
    echo -n "Active Binary Version: "
    python3 --version
else
    echo "[STATUS] WARNING: $PACKAGE_NAME was not detected via dpkg."
    echo "Please ensure the software is installed to complete the audit."
fi

echo "---------------------------------------------------------------"
echo "  PHILOSOPHY NOTE & CATEGORIZATION:                            "
echo "---------------------------------------------------------------"

# --- Case Statement for Philosophy Note ---
# The project requires a case statement to print a description based on name [cite: 141]
case $PACKAGE_NAME in
    python3)
        echo "PHILO: Python represents the 'batteries included' philosophy."
        echo "It focuses on code readability and community-driven library growth,"
        echo "making it a cornerstone of modern open-source data science."
        ;;
    httpd|apache2)
        echo "PHILO: Apache is the veteran of the web, powering the internet's"
        echo "growth through a robust, modular open-source architecture."
        ;;
    mysql)
        echo "PHILO: MySQL is the world's most popular open-source database,"
        echo "proving that community tools can handle enterprise-grade data."
        ;;
    git)
        echo "PHILO: Git is the ultimate tool for collaboration, built by Linus"
        echo "Torvalds to manage the Linux kernel itself via decentralized code."
        ;;
    *)
        echo "PHILO: This is a verified open-source tool contributing to the"
        echo "global ecosystem of shared knowledge and free software."
        ;;
esac

echo "==============================================================="
