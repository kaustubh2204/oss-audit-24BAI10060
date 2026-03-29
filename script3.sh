#!/bin/bash
# Script 3: Disk and Permission Auditor
DIRS=("/etc" "/var/log" "/usr/bin" "/tmp")

echo "Starting Directory Audit..."
echo "------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get size using du
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Directory: $DIR"
        echo "  - Permissions/Owner: $PERMS"
        echo "  - Total Size: $SIZE"
    else
        echo "Warning: $DIR does not exist."
    fi
done

echo "------------------------------------------"
echo "Checking Git Configuration Audit..."
GIT_CONF="$HOME/.gitconfig"

if [ -f "$GIT_CONF" ]; then
    echo "Git Global Config Found at $GIT_CONF"
    ls -l "$GIT_CONF" | awk '{print "Permissions: " $1 " | Owner: " $3}'
else
    echo "Git global config not found. Run 'git config --global user.name' to create one."
fi