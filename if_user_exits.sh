#!/bin/bash
read -p "Enter the username to search : " username
count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')
if [ $count == 1 ]; #also we user == or eq
then
	echo "User exits"
else
	echo "not exits"
fi


