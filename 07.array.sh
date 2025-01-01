#!/bin/bash 
#The above line represents shebang interpreter
movies=("Annamayya" "Sriramadasu" "Srirama")
echo "The movies are : ${movies[@]}"
echo "The first movie is : $(movies[0])"
echo "The second movie is : ${movies[1]}"
echo "The third movie is : ${movies[2]}"

