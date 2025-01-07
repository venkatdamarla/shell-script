#!/bin/bash
echo "The written script to archive the logs"
echo "======================================"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
Logs_Folder="/var/log/shellscript-logs"
Log_File="$( echo $0 | cut -d "." -f1)
Timestamp=$(year +"%Y-%m-%d-%H-%M-%S)
Log_File_Name="$Logs_Folder/$Log_File-$Timestamp.log"

echo "Script started executing at: $Timestamp" &>>Log_File_Name
