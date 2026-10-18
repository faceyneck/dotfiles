#!/bin/bash

#Positional parameter(s), or argument(s)
#Will take an argument at the end of the script
#Such as, 'bestdayever Mitchell' or any other string
name=$1
compliment=$2


#Accept a BASH command as a variable
user=$(whoami)
date=$(date)
whereami=$(pwd)
echo "Good morning, $name!"
sleep 1

echo "You're looking good today, $name"
sleep 1

echo "You have the $compliment I've ever seen, $name!!"
sleep 2

echo "You are currently logged in as $user on date $date and are in the directory $whereami"
