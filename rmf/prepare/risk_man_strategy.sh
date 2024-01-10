#!/bin/bash

echo "Risk Management Strategy Script"

read -p "Enter risk tolerance level (Low, Medium, High): " risk_tolerance
read -p "Enter risk acceptance criteria: " risk_acceptance_criteria
read -p "Enter risk communication plan: " risk_communication_plan

echo "Risk Tolerance Level: $risk_tolerance" >> risk_strategy.txt
echo "Risk Acceptance Criteria: $risk_acceptance_criteria" >> risk_strategy.txt
echo "Risk Communication Plan: $risk_communication_plan" >> risk_strategy.txt
