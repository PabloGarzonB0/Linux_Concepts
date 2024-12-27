#! /bin/bash  

# Interprete shenlang

echo 'Are you enjoying this course so far?'
echo  "Enter \"Y\" for yes, \"N\" for no "

read response 

if [ "$response" == "Y" ] 
then 
  echo "Al parecer tienes el entusiasmo"
elif [ "$response" = "N" ] 
then 
  echo "I'm sorry to hear you are not enjoying the course."
  echo "Your feedback regarding what we can do to improve the learning"
  echo "for this course would be greatly appreciated"
else
  echo "YOur response must be either 'y' or 'n'. "
  echo "Please re-run the script to try again."
fi

