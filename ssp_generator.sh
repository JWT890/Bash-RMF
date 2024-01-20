#!/bin/bash

# gets user input
function get_user_input() {
	read -p "$1: " user_input
	echo "$user_input"
}
# function that creates the System Security Plan
function create_ssp_template() {
	echo "System Security Plan (SSP)"
	echo "--------------------------"

	# Introduction
	echo -e "\n1. Introduction"
	echo " - Overview of the system: $(get_user_input 'Enter system overview: ')" >> System_Security_Plan.txt
	echo " - Purpose of the SSP: $(get_user_input 'Enter purpose of the document: ')" >> System_Security_Plan.txt
	echo " - Scope and Boundaries: $(get_user_input 'Enter scope and boundaries: ')" >> System_Security_Plan.txt

	# System Overview
	echo -e "\n2. System Overview"
	echo " - Description of the System Architecture: $(get_user_input 'System Architecture Description: ')" >> System_Security_Plan.txt
	echo " - Identification of componenets: $(get_user_input 'Enter hardware, software, and network components: ')" >> System_Security_Plan.txt
	echo " - Connectivity and interdependencies: $(get_user_input 'Enter connectivities and interdependicies: ')" >> System_Security_Plan.txt

	# System Categorization
	echo -e "\n3. Ssystem Categorization"
	echo " - Classification of the system: $(get_user_input 'Enter system categorization: ')" >> System_Security_Plan.txt

	# Security Controls
	echo -e "\n4. Security Controls"
	echo " - Access Controls: $(get_user_input 'Enter access controls: ')"
	echo " - Identification and authentication: $(get_user_input 'Enter identification and authentication controls: ')" >> System_Security_Plan.txt
	echo " - Auditing and Monitoring: $(get_user_input 'Enter audit and monitoring controls: ')" >> System_Security_Plan.txt
	echo " - Incidence Response: $(get_user_input 'Enter incident response procedures: ')" >> System_Security_Plan.txt
	echo " - Physical Security: $(get_user_input 'Enter physical security measures: ')" >> System_Security_Plan.txt
	echo " - Configuration Management: $(get_user_input 'Enter configuration management processes: ')" >> System_Security_Plan.txt
	echo " - Encryption: $(get_user_input 'Enter encryption usage: ')" >> System_Security_Plan.txt
	echo " - Network Security: $(get_user_input 'Enter network security controls: ')" >> System_Security_Plan.txt

	# Security Policies and Procedures
	echo -e "\n5. Security Policies and Procedures"
	echo " - Acceptable User Policy: $(get_user_input 'Enter acceptable user policy: ')" >> System_Security_Plan.txt
	echo " - Password Policy: $(get_user_input 'Enter password policy: ')" >> System_Security_Plan.txt
	echo " - Incident Response Plan: $(get_user_input 'Enter incident response plan: ')" >> System_Security_Plan.txt
	echo " - Data Handling and Classification: $(get_input_input 'Enter data handling and classification guidelines: ')" >> System_Security_Plan.txt

	# Risk Management
	echo -e "\n6. Risk Management"
	echo " - Risk assessment methodology: $(get_user_input 'Enter risk assessment methodology: ')" >> System_Security_Plan.txt
	echo " - Identified risks and mitigations: $(get_user_input 'Enter identified risks and mitigations: ')" >> System_Security_Plan.txt
	echo " - Contingency planning: $(get_user_input 'Enter contintency planning details: ')" >> System_Security_Plan.txt

	# Continious Monitoring
	echo -e "\n7. Continous Monitoring"
	echo " - Procedures for ongoing security monitoring: $(get_user_input 'Enter monitoring procedures: ')"
	echo " - Regular security assessments and audits: $(get_user_input 'Enter assessment and audit details: ')" >> System_Security_Plan.txt

	# Security Training and Awareness
	echo -e "\n8. Security Training and Awareness"
	echo " - Training programs: $(get_user_input 'Enter training program details: ')" >> System_Security_Plan.txt
	echo " - Awareness campaigns: $(get_user_input 'ENter awareness campaing details: ')" >> System_Security_Plan.txt

	# Documentation and records
	echo -e "\n9. Documentation and records"
	echo " - Maintenance of security-related documentation: $(get_user_input 'Enter documentation maintenance details: ')" >> System_Security_Plan.txt
	echo " - Record-keeping for security incidents and audits: $(get_user_input 'Enter record-keeping details: ')" >> System_Security_Plan.txt

	# Appendices
	echo -e "n/10. Appendices"
	echo " - Supporting documents: $(get_user_input 'Enter supporting documents details: ')" >> System_Security_Plan.txt

	echo -e "\nSSP Template Generation Complete" 
}

# runs the create_ssp_template function
create_ssp_template
