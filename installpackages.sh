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

for i in $@
do
  echo "installing packges :$i"
  dnf list installed $i 
  if [ $? -eq 0 ]
  then
  echo "package is already installed :$i ... skipping"
  exit 1
  else
  dnf install $i -y 
  VALIDATE &? "installing $i"
fi
done








