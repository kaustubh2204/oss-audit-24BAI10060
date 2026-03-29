#!/bin/bash
# Script 4: Log File Analyzer
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Check if file exists and is not empty
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Do-while style check: If file is empty, wait or notify
if [ ! -s "$LOGFILE" ]; then
    echo "File is currently empty. Waiting for log entries..."
    sleep 2
fi

echo "Analyzing $LOGFILE for '$KEYWORD'..."

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times."
echo "------------------------------------------"
echo "Last 5 matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5