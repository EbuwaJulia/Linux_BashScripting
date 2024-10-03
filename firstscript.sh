#!/bin/bash

# IF STATEMENT

# echo "This is my first script on github"
# echo -n "Enter a number: "
# read NUM
#if [ $NUM -gt 7 ]; then
#	echo "Number is greater than seven"
#else
#	echo "Number is less than seven"
# fi


#MATHEMATICAL COMPARISON
#FIRST=$1
#SECOND=$2
#if [ $# -lt 2 ] || [ $# -gt 2 ]; then #Instead if [ ! $# -eq 2 ]; then
#	echo "You can only provide two arguments"
#	exit 1
#fi

#let RESULT=FIRST*SECOND
#if [ ! $? -eq 0 ]; then
#	echo "Enter two digit numbers "
#	exit 2
#fi
#echo "$FIRST * $SECOND = $RESULT "

#STRING COMPARISON
# [ "$STR1" = "$STR2" ] or [ "$STR1" != "$STR2" ]
# [ "$STR1" = "Hello" ] or [ "$STR1" != "Hello" ]
# If string is empty use -z operand [ -z "$STR1" ] returns true if STR1 
# holds an empty string
# [ -n "$STR1" ] return true if  STR1 is not empty
# To alphabetically compare two strings
# [[ $STR1 > $STR2 ] or [[ $STR1 < $STR2 ]]
# Wildcards - [[ $STR1 == string-with-wildcards ]]
# Regular Expressions - [[ $STR1 =~ $regex ]]

# STRING COMPARISON EXAMPLES 
