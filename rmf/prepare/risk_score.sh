#!/bin/bash

# function that calculates the risk score
function calculate_risk_score() {
	# variable for vulnerability score
	local vulnerability_severity=$1
	# variable for asset score
	local asset_criticality=$2
	# variable for threat intel score
	local threat_intelligence=$3

	#variable that computes the risk score
	local risk_score=$((vulnerability_severity * asset_criticality * threat_intelligence))
	echo $risk_score
}

# function that identifies risks
function identify_risks() {
	# Simulated data
	assets=("Asset1" "Asset2" "Asset3")
	vulnerabilities=("High" "Medium" "Low")
	threats=("Active" "Inactive" "Targeted")

	# prints identifying risks
	echo "Identifying risks..."
 	# statement checks for asset in $assets
	for asset in "${assets[@]}"; do
 	    # statement that checks in the field
            for vulnerability in "${vulnerabilites[@]}"; do
	    	# statement that checks in the field
		for threat in "${threats[@]}"; do
  		    # statement that checks for if the field is high and threat is Active
		    if [ "$vulnerability" == "High" ] || [ "threat" == "Active" ]; then
      			# prints that the Potential risk is based on certain conditions
			echo "Potential risk detected: $asset - Vulnerability: $vulnerability, Threat: $threat"
		    fi
		done
	    done
	done
}

# function that prioritizes and sorts risk scores
function prioritize_risks() {
	# Simulated data
	risk_scores=("150" "60" "90")

	# Sorts the data in descending order
	sorted_risk_scores=($(for score in "${risk_scores[@]}"; do echo $score; done | sort -nr))

	# prints Prioritizing risks
	echo "Prioritizing risks:"
	# looks through the simulated scores
	for score in "${sorted_risk_scores[@]}"; do
 	    # prints that a specifc score is a high priority
	    echo "Risk with score $score is a high priority"

     	    # if the score is greater than or equal to 100
	    if [ "$score" -ge "100" ]; then
     		# prints taking immediate action for high priority risk
		echo "Taking immediate action for high priority risk"
  	    # if the score is greater than or equal to 50
	    elif [ "$score" -ge "50" ]; then
     		# prints planning to address soon
		echo "Planning to address soon"
  	    # if the score is less than 50
	    else
     		# prints Monitoring
		echo "Monitoring"
	    fi
	done
}

# function for running the main function
function main() {
	# Simulated data
	vulnerability_severity=3
	asset_criticality=5
	threat_intelligence=4

	# Calculates the risk score
	risk_score=$(calculate_risk_score $vulnerability_severity $asset_criticality $threat_intelligence)
	# Prints the risk score
	echo "Calculated Risk Score: $risk_score"

	# calls the identify_risks function
	identify_risks

	# calls the prioritize_risks function
	prioritize_risks
}

# calls and runs the main function
main
