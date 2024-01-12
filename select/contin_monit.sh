#!/bin/bash

# function for getting user input for the script
function get_input() {
	# prints the name of the application
	echo "Continous Monitoring Strategy Script"
	echo "------------------------------------"
 	# asks the user for the system name
	read -p "Enter the system name: " system_name
 	# asks the user for the monitoring frequency
	read -p "Enter the monitoring frequency (daily, weekly, monthly): " monitoring_frequency
 	# asks the user for the tools or methods
	read -p "Enter the monitoring tools or methods (comma-separated): " monitoring_tools
 	# asks the user for the notifiication preference
	read -p "Enter the notification mechanism in case of anomolies: " notification_mechanism
}

# function for generating the monitoring strategy
function generate_strategy() {
	# creates the txt file and displays the user input in respective categories
	cat << EOF > "Contin_Monit_Strat.txt"
Continous Monitoring Strategy for $system_name
---------------------------------------------
Monitoring Frequency: $monitoring_frequency
Monitoring Tools/Methods: $monitoring_tools
Notification Mechanism: $notification_mechanism

Strategy:
- Implement $monitoring_frequency scans using $monitoring_tools
- Configure alerts for potential security incidents
- Notify the relevant stakeholders through $notification_mechanism

This strategy will help in the early detection of security issues and ensure timely response

EOF
}

# runs the get_input function
get_input
# runs the generate_strategy function
generate_strategy

# prints the file as been generated and created
echo "Continous Monitoring Strategy generated and created: Contin_Monitor_Strat.txt"
