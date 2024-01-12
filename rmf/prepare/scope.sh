#!/bin/bash

# displays the name of the application
echo "System Scope Definition Script"
# reads and takes the user input for system name
read -p "Enter system name: " system_name
# reads and takes the user input for system description
read -p "Enter system description: " system_description
# reads and takes the user input for the key elements
read -p "Enter key elements: " key_elements

# displays the user input for the system name and appends it to the txt file
echo "System Name: $system_name" >> systemscope.txt
# displays the user input for the system description and appends it to the txt file
echo "System Description: $system_description" >> systemscope.txt
# displays the user input for the key elements and appends it to the txt file
echo "Key components: $key_elements" >> systemscope.txt


