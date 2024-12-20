#!/bin/bash

userid=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

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

dnf install mysql -y &>>LOGFILE

VALIDATE $? "installing mysql"  #validate=$1 is it exit status,installing mysql=$2  #$1 is not equal to 0 means exit status is not equal to zero 


dnf install git -y &>>LOGFILE

VALIDATE $? "installing git"  #validate=$1,installing mysql=$2