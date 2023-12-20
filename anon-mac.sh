#!/bin/bash

# Banner Display

figlet -f slant.flf -c "Anon-Mac" 

# Author Details

echo "                         Cretaed By KALMUX       v1.0"
echo " "

#Intsalling Macchanger tool

tool=$(sudo apt-get install macchanger)

# Creating a support Directory 

mkdir logs

# Storing details from ifconfig command to ifs.txt file

file=$(ifconfig -s > logs/inf.txt)

# grepping 2nd line wich contain interface value

INFC=$(awk 'NR == 2 {print $1}' inf.txt > inf.txt )


# storing interface name into cl var 

cl=$(cat inf.txt)

# showing current mac and permanent mac using macchanger

echo "Current Macc Address Details"
sudo macchanger -s "$cl"

sleep 2s

echo " "

# Layer 1 Encryption 
echo "Encrypting Your Macc Address {Level 1}"

sudo macchanger -r "$cl"

sleep 2s

echo " "

# Layer 2 Encryption 
echo "Encrypting Your Macc Address {Level 2}"

sudo macchanger -r "$cl"

sleep 2s

echo " "

# Layer 3 Encryption 
echo "Encrypting Your Macc Address {Level 3}"

sudo macchanger -r "$cl"

# Clearing logs 

#sudo rm -rf logs




