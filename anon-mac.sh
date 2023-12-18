#!/bin/bash

#Intsalling Macchanger tool

tool=$(sudo apt install macchanger)

# Storing details from ifconfig command to mac.txt file

Mac=$(ifconfig > mac.txt)

#
 echo "$Mac"





