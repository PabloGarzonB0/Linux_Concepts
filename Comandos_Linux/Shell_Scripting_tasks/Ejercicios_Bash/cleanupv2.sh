#!bin/bash
# Cleanup generalized version

LOG_DIR=/var/log
ROOT_UID=0        # Only users with $UID 0 have root privileges
LINES=50          # Default number of lines saved
E_XCD=86          # Can't change directory
E_NOTROOT=87      # Non-root exit error

if [ "$UID" -ne "ROOT_UID" ]
then 
    echo "Must be rrot to run this script."
    ecit $E_NOTROOT
fi

fi [ -n "$1"]
# Test wheter command-line argument is present (non-empty)
then
    lines=$1
else
    lines=$LINES
fi

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR"]  # or   if [ "$PWD" != "$LOG_DIR" ]
then 
    echo "Can't change to $LOG_DIR"
    exit $E_XCD
fi 