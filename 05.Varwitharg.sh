#!/bin/bash
echo "Variables with arguments"
person1=$1
person2=$2
person3=$3
person4="Vishnu"
echo "The name of the Person1 is : $person1"
echo "The name of the Person2 is : $person2"
echo "The name of the Person3 is : $person3"
echo "The name of the Person4 is : $person4"
echo "All arguments passed : $@"
echo "Number of variables : $#"
echo "Script Name : $0"
echo "Process ID of script $0 is: $$"
echo "$USER running the script $0"
echo "Working directory of $USER is: $PWD"
echo "Home directory of $USER is: $HOME"
sleep 30 &
echo "Process ID of Sleep command is: $!"