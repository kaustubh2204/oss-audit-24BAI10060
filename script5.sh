#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "=== Personalized Open Source Manifesto ==="
read -p "1. Name one Git feature you use (e.g., branch, commit): " FEATURE
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you share with the world for free? " SHARE

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Composing the manifesto
{
    echo "OPEN SOURCE MANIFESTO"
    echo "Created by $(whoami) on $DATE"
    echo "------------------------------------------"
    echo "I believe that software should be as open as a '$FEATURE'."
    echo "To me, freedom in code is defined by '$FREEDOM'."
    echo "In the spirit of Git, I commit to building '$SHARE'"
    echo "and sharing it freely with the global community."
} > "$OUTPUT"

echo "------------------------------------------"
echo "Manifesto saved to $OUTPUT"
echo "------------------------------------------"
cat "$OUTPUT"

# Note: You can create an alias for this script using:
# alias gen_manifesto='./script5_manifesto_generator.sh'