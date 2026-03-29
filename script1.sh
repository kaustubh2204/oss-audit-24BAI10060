#!/bin/bash
# Script 1: System Identity Report
# Author: Kaustubh Upadhyay
# Course: Open Source Software

# --- Variables
STUDENT_NAME="Kaustubh Upadhyay"
SOFTWARE_CHOICE="Git"

# --- System info using command substitution
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -ds 2>/dev/null || echo "Linux Distribution")
CURRENT_DATE=$(date "+%A, %d %B %Y")

# --- Display
echo "=========================================="
echo "          Open Source Audit               "
echo "=========================================="
echo "Student Name    : $STUDENT_NAME"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "OS Distribution : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "------------------------------------------"
echo "License Note: This system and Git are both"
echo "covered under the GNU GPL v2 license."
echo "=========================================="