#!/bin/bash

userid=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 ...failure"
        exit 1
        echo "$2 ....success"
    fi
}

if [ $userid -ne 0 ]
then
    echo "you are not in superuser"
    exit 1 #manually exit if error occurs
else
    echo "print you are  in superuser"
fi         

dnf install mysql -y

VALIDATE $?  "installing mysql"        #validate=$1,installing mysql=$2


dnf install git -y

VALIDATE $?    "installing git "       #validate=$1,installing mysql=$2