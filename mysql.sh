#!/bin/bash




#userid=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "$2 is ..failure"
    exit 1
    else
    echo "$2 is ..success"
fi

}


#if [ $userid -ne 0 ]
#then
#    echo "you are not in superuser"
#    exit 1
#    else 
#    echo "you are in superuser"
#fi

sudo dnf install mysql-server -y

VALIDATE $?  "installing mysql"

systemctl enable mysqld

VALIDATE $?  "enabling mysql"


systemctl start mysqld


VALIDATE $?  "starting mysql"


mysql_secure_installation --set-root-pass ExpenseApp@1

VALIDATE $?  "username and password"