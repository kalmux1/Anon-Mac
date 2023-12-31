#!/bin/bash

# Banner Display

echo " "
apt=$(sudo apt-get install figlet)
figlet -f slant.flf  "Anon-Mac" 

# Author Details

echo "            Cretaed By KALMUX       v1.0"
echo "    Installing required packages for your system        "
echo "This may take some time based on your Internet speed    "
echo " "

#Intsalling Macchanger tool

tool=$(sudo apt-get install macchanger) 

# Creating a support Directory 

mkdir logs

# Storing details from ifconfig command to ifs.txt file

file=$(ifconfig -s > logs/infs.txt)

# grepping 2nd line wich contain interface value

INFC=$(awk 'NR == 2 {print $1}' logs/infs.txt > logs/main_inf.txt )


# storing interface name into cl var 

cl=$(cat logs/main_inf.txt)

# showing current mac and permanent mac using macchanger
echo "-------------------------------------------------"
echo "       Current Macc Address Details"
echo " "
sudo macchanger -s "$cl" 
sleep 2s
echo "-------------------------------------------------"
echo " "

# Layer 1 Encryption 
echo "-------------------------------------------------"
echo "  Encrypting Your Macc Address ====> {Level 1}"
echo " "
sudo macchanger -r "$cl"
sleep 2s
echo "-------------------------------------------------"
echo " "

# Layer 2 Encryption 
echo "-------------------------------------------------"
echo "  Encrypting Your Macc Address ====> {Level 2}"
echo " "
sudo macchanger -r "$cl"
sleep 2s
echo "-------------------------------------------------"
echo " "

# Layer 3 Encryption 
echo "-------------------------------------------------"
echo "  Encrypting Your Macc Address ====> {Level 3}"
echo " "
sudo macchanger -r "$cl"
echo "-------------------------------------------------"

# Clearing logs 

sudo rm -rf logs

# Exiting From The tool

echo " "
echo " "
echo "           Thanks for using this tool    "
echo "                   Hack daily            "



