#!/bin/bash

userid=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]                   #$1 is about exit status is used to check previous command is succes or not ,we can indentify  only when exit status is 0
    then
    echo "$2 is failure"              #$2=installing mysql is (or) installing git is
    exit 1
    else
    echo "$2 is success"
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

VALIDATE $? "installing mysql"  #validate=$1,installing mysql=$2  #$1 is not equal to 0 means exit status is not equal to zero 


dnf install git -y

VALIDATE $? "installing git"  #validate=$1,installing mysql=$2