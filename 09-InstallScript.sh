#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
Logs_Folder="/var/log/shellscript-logs"
Log_File=$( echo $0 | cut -d "." -f1)
TimeStamp=$(date +%y-%m-%d-%H-%M-%S)
Log_File_Name="$Logs_Folder/$Log_File-$TimeStamp.log"
echo "Venkata"
echo "The File Name is : $Log_File_Name"

echo "The UserID value is: $USERID" &>>$Log_File_Name
if [ $USERID -eq 0 ] 
then
   echo "The user has the sudo access and he can install the softwares" &>>$Log_File_Name
else
   echo "The user doesn't have the sudo access and he can't install the softwares" &>>$Log_File_Name
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

