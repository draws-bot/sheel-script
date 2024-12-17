#!/bin/bash

userid=$(id -u)

VALIDATE(){
    
}

if [ $userid -ne 0 ]
then
    echo "you are not in superuser"
    exit 1 #manually exit if error occurs
else
    echo "print you are  in superuser"
fi         

dnf install mysql -y

VALIDATE $?   #validate=$1,installing mysql=$2


dnf install git -y

VALIDATE $?     #validate=$1,installing mysql=$2