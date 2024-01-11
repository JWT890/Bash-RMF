#!/bin/bash

function get_input() {
	echo "Continous Monitoring Strategy Script"
	echo "------------------------------------"
	read -p "Enter the system name: " system_name
	read -p "Enter the monitoring frequency (daily, weekly, monthly): " monitoring_frequency
	read -p "Enter the monitoring tools or methods (comma-separated): " monitoring_tools
	read -p "Enter the notification mechanism in case of anomolies: " notification_mechanism
}

function generate_strategy() {
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

get_input
generate_strategy

echo "Continous Monitoring Strategy generated and created: Contin_Monitor_Strat.txt"
