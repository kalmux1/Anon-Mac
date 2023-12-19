#!/bin/bash


#Intsalling Macchanger tool

tool=$(sudo apt-get install macchanger)

# Creating a support Directory 

mkdir logs

# Storing details from ifconfig command to ifs.txt file

file=$(ifconfig -s > logs/ifs.txt)

# grepping 2nd line wich contain interface value

Infc=$(grep -n 2 logs/ifs.txt)


# storing interface name into cl var 

cl=(${Infc:2:10})


# showing current mac and permanent mac using macchanger

sudo macchanger -s "$cl"

sleep 2s

echo " "

# Layer 1 Encryption 

sudo macchanger -r "$cl"

sleep 2s

echo " "

# Layer 2 Encryption 

sudo macchanger -r "$cl"

sleep 2s

echo " "

# Layer 3 Encryption 

sudo macchanger -r "$cl"

# Clearing logs 

sudo rm -rf logs




