#!/bin/bash
USERID=$(id -u)
R=\e[31m
G=\e[32m
Y=\e[33m
echo "The UserID value is: $USERID"
if [ $USERID -eq 0 ] 
then
   echo "The user has the sudo access and he can install the softwares"
else
   echo "The user doesn't have the sudo access and he can't install the softwares"
   exit 1
fi
installation_validate()
{
    if [ $1 -ne 0 ]
    then
        echo -e "$2 installation .....$R FAILURE"
        exit 1  
    else
        echo -e "$2 installation ..... $G SUCCESS"
    fi
}
dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    installation_validate $? "My SQL"
    
else
    echo -e "My SQL $Y already installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    installation_validate $? "GIT"
else
     echo -e "GIT $Y already installed"
fi

