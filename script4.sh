#!/bin/bash
# Script 4: Log File Analyzer
# Author: Megha Gupta | Course: Open Source Software
# Usage: ./log_analyzer.sh /var/log/syslog [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'
COUNT=0

# -------- CHECK FILE EXISTS --------
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# -------- RETRY IF FILE IS EMPTY --------
while [ ! -s "$LOGFILE" ]; do
    echo "File $LOGFILE is empty. Waiting 5 seconds..."
    sleep 5
done

# -------- READ FILE LINE BY LINE --------
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# -------- PRINT SUMMARY --------
echo "==========================================="
echo "Log File Analysis — $LOGFILE"
echo "Keyword '$KEYWORD' found $COUNT times."
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "==========================================="
