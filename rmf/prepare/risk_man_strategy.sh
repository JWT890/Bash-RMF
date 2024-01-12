#!/bin/bash

# prints the name of the application
echo "Risk Management Strategy Script"

# takes the user input for the tolerance level
read -p "Enter risk tolerance level (Low, Medium, High): " risk_tolerance
# takes the user input for the risk acceptance criteria
read -p "Enter risk acceptance criteria: " risk_acceptance_criteria
# takes the user input for the communication plan
read -p "Enter risk communication plan: " risk_communication_plan

# displays the tolerance level and appends it to the txt file
echo "Risk Tolerance Level: $risk_tolerance" >> risk_strategy.txt
# displays the acceptance criteria and appends it to the txt file
echo "Risk Acceptance Criteria: $risk_acceptance_criteria" >> risk_strategy.txt
# displays the communication plan and appends it to the txt file
echo "Risk Communication Plan: $risk_communication_plan" >> risk_strategy.txt
