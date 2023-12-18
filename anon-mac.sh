#!/bin/bash

#Intsalling Macchanger tool

tool=$(sudo apt-get install macchanger)

# Storing details from ifconfig command to mac.txt file

file=$(ifconfig -s > if.txt)
echo "$file"

#Infc=$(grep -n 2 if.txt)

#echo "$Infc"



#interface=${Infc:2:10}
#echo "$interface"

#Mac=$(macchanger -s "$interface")

#echo "$Mac"





