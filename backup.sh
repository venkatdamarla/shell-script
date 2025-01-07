#!/bin/bash
echo "The written script to archive the logs"
echo "======================================"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
Logs_Folder="/var/log/shellscript-logs"
echo $Logs_Folder
Log_File="$( echo $0 | cut -d "." -f1 )
echo $Log_File
Timestamp=$(year +"%Y-%m-%d-%H-%M-%S)
echo $Timestamp
Log_File_Name="$Logs_Folder/$Log_File-$Timestamp.log"
echo "Script started executing at: $Timestamp" &>>$Log_File_Name
