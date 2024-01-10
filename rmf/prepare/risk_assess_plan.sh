#!/bin/bash

echo "Risk Assessment Planning Tool"

read -p "Enter assessment scope: " assessment_scope
read -p "Enter assessment objectives: " assessment_objectives
read -p "Enter assessment methodology: " assessment_methodology
read -p "Enter required resources: " assessment_resources

cat <<EOL > "Risk_Assessment_Plan.txt"
Assessment Scope: $assessment_scope
Assessment Objectives: $assessment_objectives
Assessment Methodology: $assessment_methodology
Required Resources: $assessment_resources

EOL

echo "Risk assessment plan created: Risk_Assessment_Plan.txt"
