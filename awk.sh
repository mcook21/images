###########################################################################
# Melissa Cook
# IS301 Fall 2022
# Develop more powerful shell script solutions using grep, awk or sed
#
# This script will demonstrate the use of awk in a script by username
# then display the username's home directory
#
###########################################################################

#!/bin/bash
echo "Please enter the username you want to search : " #get input from user of username to search
read -r user #store input as $user variable
awk -F ":" '{print $6}' /etc/passwd |sort >> homedirs.txt #extract $6 field from /etc/passwd, sort to txt file
grep -i $user homedirs.txt #grep for inputted user then display homedir
rm homedirs.txt  #delete homedirs.txt 
