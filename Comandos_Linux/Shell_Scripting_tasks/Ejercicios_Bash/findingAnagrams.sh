#!/bin/bash

# Script using "anagram" utility

E_NOARGS=86
E_BADARD=87
MINLEN=7

if [ -z "$1" ]
then
    echo "Usage $0 LETTERSET"
    exit $E_NOARGS  # Script needs a command-line argument
elif [ ${#1} -lt $MINLEN ]
then
    echo "Argument must have at least $MINLEN letters."
    exit $E_BADARD
fi

FILTER='.......'      # Must have at least 7 letters.
Anagrams=( $(echo $(anagram $1 | grep $FILTER) ) )
#          $(     $(   nested command sub.    ))
#          (      array assignment     )

echo
echo "${#Anagrams[*]}   7+ letter anagrams found"
echo
echo ${Angrams[0]}      # Fist anagram
echo ${Anagrams[1]}     # Second anagram

# echo "${Anagrams[*]}"  # To list all the anagrams in a single line ...
exit $?