#!/bin/bash


#Intsalling Macchanger tool

tool=$(sudo apt-get install macchanger)

# Creating a support Directory 

mkdir logs

# Storing details from ifconfig command to if.txt file

file=$(ifconfig -s > logs/if.txt)

# grepping 2nd line wich contain interface value

Infc=$(grep -n 2 logs/if.txt)


# storing interface name into cl var 

cl=(${Infc:2:10})

# showing current mac and permanent mac using macchanger

sudo macchanger -s "$cl"








