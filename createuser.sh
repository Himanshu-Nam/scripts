#!/bin/bash
<<help
helllo namaste 
ok ok
help
echo "=====Creation of User======="
read -p "Enter your username : " username
read -p "Enter your password : " password
sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"
echo "=====deletimg user============"
sudo userdel $username
echo"==========deleting user successfully========="
if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
	echo "user not found"
else
	echo "user exits"
fi
echo "user is deleted because it is 0"
echo "=====Creation of user Completed====="

