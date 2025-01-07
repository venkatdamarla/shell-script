#!/bin/bash
echo "The script reads a text file and count the occurences of each word"
echo "========================================================================="

#Check if a file path is provided

if [ -z $1 ]
then
  echo "Please provide the file name to count the words"
  exit 1
else
  echo "The file path to count the words is : $1"
fi

#Assign the input file path to a Variable
file_path=$1

#Check if the file exists
if [ -f $file_path ]
then
   echo "The file is available in the given path"
    
else
    
    echo "The file is not available in the given path"
    exit 1

fi
cat $file_path | tr -s '[:space:][:punct:]' '[\n*]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 ": " $1}'
echo "The content of the file"
cat $file_path
echo "Convert spaces and punctuation into new lines"
cat $file_path | tr -s '[:space:][:punct:]' '[\n*]'
echo "--Convert into lower case of the text---"
cat $file_path | tr -s '[:space:][:punct:]' '[\n*]' | tr '[:upper:]' '[:lower:]'
echo "----Sorting------"
cat $file_path | tr -s '[:space:][:punct:]' '[\n*]' | tr '[:upper:]' '[:lower:]' | sort
echo " ---- uniqueness count -------"
cat $file_path | tr -s '[:space:][:punct:]' '[\n*]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c 
echo " ------- Sort -nr------"
cat $file_path | tr -s '[:space:][:punct:]' '[\n*]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr
echo " ---------- TOP 5 -------"
cat $file_path | tr -s '[:space:][:punct:]' '[\n*]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -n 5 
