#!/bin/bash

# =================================================================
# Script 4: Log File Analyzer
# Author: ADARSH PATEL
# Registration Number: 24BCY10312
# Course: Open Source Software (OSS)
# =================================================================

# Taking the first argument as the log file path
LOG_FILE_PATH=$1
# Default search term is 'error', but can be changed via second argument
SEARCH_TERM=${2:-"error"}

echo "---------------------------------------------------------------"
echo " LOG AUDIT SESSION FOR: $LOG_FILE_PATH"
echo "---------------------------------------------------------------"

# --- Error Handling ---
# Checking if the user actually pointed to a real file
if [ -z "$LOG_FILE_PATH" ]; then
    echo "[!] USAGE ERROR: Please provide a log file path."
    echo "    Example: ./script4_log_analyzer.sh /var/log/auth.log"
    exit 1
fi

if [ ! -f "$LOG_FILE_PATH" ]; then
    echo "[!] FILE ERROR: I couldn't find the file '$LOG_FILE_PATH'."
    exit 1
fi

# --- The Processing Loop ---
# Initializing a counter to track occurrences
MATCH_COUNT=0

echo "[PROCESSING] Scanning for '$SEARCH_TERM'..."

# Using 'while read' loop as per project requirement for Unit 4
while IFS= read -r CURRENT_LINE
do
    # Case-insensitive check for the keyword
    if echo "$CURRENT_LINE" | grep -iq "$SEARCH_TERM"; then
        ((MATCH_COUNT++))
    fi
done < "$LOG_FILE_PATH"

# --- Results Section ---
echo "---------------------------------------------------------------"
echo " AUDIT SUMMARY:"
echo " Found the keyword '$SEARCH_TERM' exactly $MATCH_COUNT times."
echo "---------------------------------------------------------------"

# Requirement: Show the last 5 entries to demonstrate 'tail' command usage
if [ $MATCH_COUNT -gt 0 ]; then
    echo " SNAPSHOT (Last 5 occurrences):"
    grep -i "$SEARCH_TERM" "$LOG_FILE_PATH" | tail -n 5
else
    echo " No occurrences of '$SEARCH_TERM' were found in the log."
fi

echo "==============================================================="
