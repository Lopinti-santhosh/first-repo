#!/bin/bash

USERID=$(id -u)
timestamp=$(date +%f-%h-%m-%s)
scriptname=$(echo $0 | cut -d "/" -f1)
logfile=/tmp/${scriptname}_${timestamp}.log

R="\e[31m "
G="\e[32m "
Y="\e[33m "
N="\e[0m "

validate(){
    if [ $1 -ne 0 ]
    then 
        echo " its -e $R failure $2 $N"
        
        exit 1
    else
        echo " its -e $G success $2 $N"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y &>>$logfile

validate $? "Installation of mysql"


dnf install git -y &>>$logfile

validate $? "Installation of git"

