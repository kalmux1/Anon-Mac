#!/bin/bash

#Intsalling Macchanger tool

tool=$(sudo apt-get install macchanger)

# Storing details from ifconfig command to mac.txt file

Mac=$(ifconfig)

#

interface=${Mac:0}

echo "$interface"





