#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Megha Gupta | Course: Open Source Software

# -------- VARIABLES --------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
SOFTWARE="firefox"
SOFTWARE_CONF="/etc/firefox"

# -------- HEADER --------
echo "==========================================="
echo "Directory Audit Report — Megha Gupta"
echo "==========================================="

# -------- LOOP THROUGH SYSTEM DIRECTORIES --------
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# -------- CHECK SOFTWARE CONFIG DIRECTORY --------
echo "-------------------------------------------"
if [ -d "$SOFTWARE_CONF" ]; then
    PERMS=$(ls -ld "$SOFTWARE_CONF" | awk '{print $1, $3, $4}')
    echo "$SOFTWARE configuration directory exists: $SOFTWARE_CONF"
    echo "Permissions: $PERMS"
else
    echo "$SOFTWARE configuration directory does NOT exist: $SOFTWARE_CONF"
fi
echo "==========================================="
