#!/bin/bash

# prints the name
echo "Automated Information Type File Scan"
# user is asked for either a directory or file to be scan
read -p "Enter to scan: " input

# keywords used for classification
sensitive_keywords=("confidential" "restricted" "private")
public_keywords=("public" "unclassified")

# statment that checks for files/directories in a directory
for file in "$input"/*; do
  # if a sensitive keyword is detected within the file
  if grep -q -E "${sensitive_keywords[*]}" "$file"; then
    # prints Sensitive
    info_type="Sensitive"
  # if a public keyword is detected within the file
  elif grep -q -E "${public_keywords[*]}" "$file"; then
  # prints Public
    info_type="Public"
  else
    # otherwise prints Unclassified
    info_type="Unclassified"
  fi

  # prints the file that was scanned and the classification type
  echo "File: $file, Information Type: $info_type"
done


