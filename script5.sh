#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Megha Gupta | Course: Open Source Software

echo "Answer three questions to generate your manifesto."
echo ""

# -------- INTERACTIVE INPUT --------
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# -------- VARIABLES --------
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# -------- COMPOSE MANIFESTO --------
echo "Open Source Manifesto — Generated on $DATE" > "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I use $TOOL every day because it empowers me to create and innovate. To me, freedom means '$FREEDOM', which allows knowledge and tools to be shared openly with everyone. I dream of building $BUILD and releasing it freely for the benefit of the global community." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "This is my personal commitment to the open-source philosophy." >> "$OUTPUT"

# -------- DISPLAY RESULT --------
echo ""
echo "==========================================="
echo "Your manifesto has been generated and saved to $OUTPUT"
echo "-------------------------------------------"
cat "$OUTPUT"
echo "==========================================="

# -------- ALIAS DEMO --------
# Example: alias showmanifest='cat $OUTPUT'   # This would allow you to type 'showmanifest' to view the file quickly
