#!/bin/bash
echo "====== Hello user Welcome to User Management Linux ======"
while true;
do
echo "Press 1 to create user"
echo "Press 2 to delete user"
echo "Press 3 to Password Change"
echo "press 4 to list user"
echo "press 5 to help"
echo "press 6 to exit"
read -p "Enter your choice : " choice
echo "choice is "$choice
if [ "$choice" -eq 1 ]; 
then
	read -p "Enter your username : " username
	sudo useradd "$username"
	myval=$?
	
	if [ "$myval" -eq 0 ] 
	then
		#echo "user is created sucessfull"
		sudo passwd "$username"
		echo "user is created sucessfull"
	else
		echo "user is not created"
	fi	
elif [ "$choice" -eq 2 ];
then

        read -p "Enter the username to delete : " user
	serach=$(cat /etc/passwd | grep "$user"| wc | awk '{print $1}')
	if [ "$serach" -eq 0 ];
	then
		echo "user is not in list"
	else
		sudo userdel "$user"
		echo "user is deleted"
	fi

elif [ "$choice" -eq 3 ];
then
	read -p "Enter the username to change the password : " us
        serach=$(cat /etc/passwd | grep "$us"| wc | awk '{print $1}')
	 if [ "$serach" -eq 0 ];
        then
                echo "user is not in list"
        else
                sudo passwd "$us"
                echo "password change successfully"
        fi
elif [ "$choice" -eq 4 ];
then
	cat /etc/passwd
elif [ "$choice" -eq 5 ];
then
	help

elif [ "$choice" -eq 6 ];
then
	break

fi
done
