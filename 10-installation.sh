#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run this script with root user access"
    exit 1
fi

echo "Installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing Nginx .... FALIURE"
    exit 1
else
    echo "Installing Nginx .... SUCCESS"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing Mysql .... FALIURE"
    exit 1
else
    echo "Installing Mysql .... SUCCESS"
fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installing nodejs .... FALIURE"
    exit 1
else
    echo "Installing nodejs .... SUCCESS"
fi