#!/bin/bash

USERID=$(id -u)

validate(){
    if [ $1 -ne 0 ]
    then 
        echo " its failure"
        exit 1
    else
        echo " its success"
}
fi

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y

validate $? "Installation of mysql"


dnf install git -y

validate $? "Installation of git"

echo "is script proceeding?"