#!/bin/bash

# =================================================================
# Script 1: System Identity Report
# Author: ADARSH PATEL
# Registration Number: 24BCY10312
# Course: Open Source Software (OSS)
# =================================================================

# --- Core Variables ---
# I am setting these up to personalize the audit output for the report
STUDENT_NAME="ADARSH PATEL"
REG_NUM="24BCY10312"
SOFTWARE_CHOICE="Python"

# --- Gathering System Data ---
# Using command substitution $() to pull real-time data from the Linux kernel
KERNEL_VERSION=$(uname -r)
CURRENT_USER=$(whoami)
USER_HOME=$HOME
UPTIME_INFO=$(uptime -p)
OS_DISTRO=$(lsb_release -ds 2>/dev/null || cat /etc/issue | head -n1)
CURRENT_DATE=$(date '+%A, %d %B %Y, %H:%M:%S')

# --- Display Section ---
# Formatting the output to look like a professional welcome screen for the audit
echo "==============================================================="
echo "             OSS AUDIT PROJECT - WELCOME SCREEN                "
echo "==============================================================="
echo " Student Name      : $STUDENT_NAME"
echo " Registration No.  : $REG_NUM"
echo " Audited Software  : $SOFTWARE_CHOICE"
echo "---------------------------------------------------------------"
echo " SYSTEM DETAILS:"
echo " Kernel Version    : $KERNEL_VERSION"
echo " Linux Distribution: $OS_DISTRO"
echo " Active User       : $CURRENT_USER"
echo " Home Directory    : $USER_HOME"
echo " System Uptime     : $UPTIME_INFO"
echo " Current Timestamp : $CURRENT_DATE"
echo "---------------------------------------------------------------"

# --- License Requirement ---
# The project asks to state which license covers the OS (Unit 1/2) [cite: 98]
echo " LICENSE NOTE:"
echo " This Linux system operates under the GNU General Public License (GPL)."
echo " This ensures that the kernel remains free to use, study, and modify"
echo " for everyone, which aligns with the core philosophy of Open Source."
echo "==============================================================="
