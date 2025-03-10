#! /bin/bash
# Script para A script to clean up log files in /var/log
# Cleanup
# Warnings:
# This script uses quite a number of features that will be explained
#

# First version
# cd /var/log
# cat /dev/null > messages
# cat /dev/null > wtmp
# echo "Log files cleaned up."

# Improved version
LOG_DIR=/var/log
cd $LOG_DIR

cat /dev/null > message
cat /dev/null > wtmp

echo "Logs cleaned up"
exit
