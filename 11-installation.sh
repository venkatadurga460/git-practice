#!/bin/bash

USERID=$( id -u )
#echo user is $USERID

if [ $USERID -ne 0 ]
then 
echo "you don't have root previllage, please exit"
exit 1
else
echo "you have root access please procedd further"
fi

dnf list installed git

if [ $? -ne 0 ]
then 
echo "Git is not installed please go head and install"
    dnf insatll git -y
    if [ $? -ne 0]
    then 
    echo "installation not success. please check with BU"
    exit 1
    else 
    echo "git installation succee"
    fi
else 
echo "Git is installed, no need to perform"
fi

dnf list installed mysql

if [ $? -ne 0]
then 
echo "MYSQL not installed. please install"
exit 1
    dnf install mysql -y
    if [ $? -ne 0]
    then 
    echo "mysql not installed. please check"
    exit 1
    else 
    echo "installation completed"
else
echo "MYSQL installed, no worries"
fi
    