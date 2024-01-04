#!/bin/bash

# prints Information Type Assignment
echo "Information Type Assignment"
# asks the user to input a file
read -p "Enter the file to categorize: " input

# asks the user to select a info type classification label
read -p "Select info type (1. Public, 2. Internal, 3. Confidential): " type
# asks the user to select a sensitivity level
read -p "Enter sensitivity level (H. Low, T. Medium, E. High): " level

# case statement to select for type
case $type in 
  1)
    # if 1 is chosen then Public is assigned
    echo "$input: Public"
    ;;
  2)
    # if 2 is chosen then Internal is assigned
    echo "$input: Internal"
    ;;
  3)
    # if 3 is chosen then Confidential is assigned
    echo "$input: Confidential"
    ;;
  *)
    # if any besides 1-3 are chosen, then retry
    echo "Invalid. Retry"
    ;;
esac

# case statement select for level
case $level in
  H)
    # if H is chosen then Low is assigned
    echo "$input: Low"
    ;;
  T)
    # if T is chosen then Medium is assigned
    echo "$input: Medium"
    ;;
  E)
    # if E is chosen then High is assigned
    echo "$input: High"
    ;;
esac

