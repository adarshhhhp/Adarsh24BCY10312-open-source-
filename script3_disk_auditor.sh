#!/bin/bash

# =================================================================
# Script 3: Disk and Permission Auditor
# Author: ADARSH PATEL
# Registration Number: 24BCY10312
# Course: Open Source Software (OSS)
# =================================================================

# Defining the list of critical system directories to audit
# These are standard in the FOSS ecosystem for configs, logs, and binaries
CHECK_DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "==============================================================="
echo " INFRASTRUCTURE AUDIT: DIRECTORY PERMISSIONS & USAGE         "
echo "==============================================================="
echo "Targeting core Linux paths..."
echo "---------------------------------------------------------------"

# --- The Loop ---
# Iterating through the array to check status, ownership, and disk space
for DIR in "${CHECK_DIRS[@]}"
do
    # Check if the directory actually exists to prevent script errors
    if [ -d "$DIR" ]; then
        # Extracting Permissions (Field 1), Owner (Field 3), and Group (Field 4)
        # Using awk to clean up the ls -ld output
        PERMS_DATA=$(ls -ld "$DIR" | awk '{print "Perms: " $1 " | Owner: " $3 ":" $4}')
        
        # Getting the human-readable size of the directory
        # Using 2>/dev/null to ignore 'Permission Denied' errors on sub-folders
        DIR_SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "[OK] $DIR"
        echo "     Info: $PERMS_DATA"
        echo "     Size on Disk: $DIR_SIZE"
    else
        echo "[!] NOTICE: $DIR does not exist on this specific environment."
    fi
    echo "---------------------------------------------------------------"
done

# --- Custom Software Audit Section ---
# Added this to connect the script directly to the Python audit task
echo " SPECIFIC AUDIT: Python Binary Location"
PY_PATH=$(which python3)

if [ -f "$PY_PATH" ]; then
    echo " Python 3 found at: $PY_PATH"
    ls -l "$PY_PATH" | awk '{print " Permissions: " $1 " | Modified: " $6 " " $7}'
else
    echo " Warning: Python 3 binary path could not be resolved."
fi

echo "==============================================================="
