#!/bin/bash

# prints the name of the application
echo "Risk Assessment Planning Tool"

# asks and reads the user input for scope, objectives, methodology, and resources
read -p "Enter assessment scope: " assessment_scope
read -p "Enter assessment objectives: " assessment_objectives
read -p "Enter assessment methodology: " assessment_methodology
read -p "Enter required resources: " assessment_resources

# creates a txt file for the Risk Assessment Plan from the inputs
# displays the inputs for each one
cat <<EOL > "Risk_Assessment_Plan.txt"
Assessment Scope: $assessment_scope
Assessment Objectives: $assessment_objectives
Assessment Methodology: $assessment_methodology
Required Resources: $assessment_resources

EOL

# prints the plan has been created in the Risk Assessment Plan
echo "Risk assessment plan created: Risk_Assessment_Plan.txt"
