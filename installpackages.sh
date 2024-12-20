#!/bin/bash




userid=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "$2 is ..failure"
    else
    echo "$2 is ..success"
fi
    

}

if [ userid -ne 0 ]
then
    echo "you are not in superuser"
    exit 1
    else 
    echo "you are in superuser"
fi

dnf install mysql -y 
VALIDATE $? "installing mysql"

dnf install git -y 
VALIDATE $? "installing git"



