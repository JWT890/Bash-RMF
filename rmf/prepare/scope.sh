#!/bin/bash

echo "System Scope Definition Script"
read -p "Enter system name: " system_name
read -p "Enter system description: " system_description
read -p "Enter key elements: " key_elements

echo "System Name: $system_name" >> systemscope.txt
echo "System Description: $system_description" >> systemscope.txt
echo "Key components: $key_elements" >> systemscope.txt


