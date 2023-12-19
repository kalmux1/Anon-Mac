#!/bin/bash

#Intsalling Macchanger tool

tool=$(sudo apt-get install macchanger)

# Storing details from ifconfig command to if.txt file

file=$(ifconfig -s > if.txt)

# grepping 2nd line wich contain interface value

Infc=$(grep -n 2 if.txt)


# storing interface name into cl var 

cl=(${Infc:2:10})

# showing current mac and permanent mac using macchanger

macchanger -s "$cl"


#$(macchanger -s $cl)

#echo $Mac





