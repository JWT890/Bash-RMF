#!/bin/bash

# function for generating the baseline for NIST SP 800-53
function nist_generation80053() {
	# prints the control line for NIST SP 800-53 and a few of the control IDs and their descriptions
 	# appends to the baseline txt if chosen
	echo "NIST SP 800-53 Control Baseline" > controls_baseline.txt
	echo "===============================" >> controls_baseline.txt
	echo "Control ID | Control Description" >> controls_baseline.txt
	echo "---------------------------------" >> controls_baseline.txt
	echo "AC1	 | Access Control Policy/Procedures" >> controls_baseline.txt
	echo "AC2 	 | Account Management" >> controls_baseline.txt
	echo "AC3 	 | Access Enforcement" >> controls_baseline.txt
	echo "AC4	 | Information Flow Enforcement" >> controls_baseline.txt
}

# function for generating the baseline for ISO 27001
function iso27001_generation() {
	# prints the control line for IS 27001 and a couple IDs and their descriptions
 	# appends to the baseline txt if chosen
	echo "ISO 27001 Control Baseline" > controls_baseline.txt
	echo "===========================" >> controls_baseline.txt
	echo "Control ID | Control Description" >> controls_baseline.txt
	echo "---------------------------------" >> controls_baseline.txt
	echo "IS1 	 | Information Security Policy" >> controls_baseline.txt
	echo "IS2 	 | Access Control" >> controls_baseline.txt
}

# function for generating the baseline for CIS baseline
function cis_generator() {
	# prints the control line for CIS Controls and a couple IDs and their descriptions
 	# appends to the baseline if chosen
	echo "CIS Controls Baseline" > controls_baseline.txt
	echo "==============================" >> controls_baseline.txt
	echo "Control ID | Control Description" >> controls_baseline.txt
	echo "----------------------------------" >> controls_baseline.txt
	echo "CIS1 	 | Inventory and Control of Hardware Assets" >> controls_baseline.txt
	echo "CIS2 	 | Data Protection" >> controls_baseline.txt
}

# asks the user for a control baseline of either of the three
echo "Select a control baseline: "
echo "1. NIST SP 800-53"
echo "2. ISO 27001"
echo "3. CIS Controls"
# asks and reads the user input based on either 1, 2 or 3
read -p "Enter you choice (1/2/3): " choice

# case statement for checking the user input for the baseline choice
case $choice in 
    # if 1, the SP 800-53 baseline is generated
    1) echo "Generating NIST SP 800-53 control baseline document.."
       nist_generation80053
       ;;
    # if 2, the ISO 27001 baseline is generated
    2) echo "Generating ISO 27001 control baseline document.."
       iso27001_generation
       ;;
    # if 3, the CIS baseline generated
    3) echo "Generating CIS Controls baseline document.."
       cis_generator
       ;;
    # if neither of the 3, the program exits
    *) echo "Invalid choice. Stopping"
       exit 1
       ;;
esac

# prints the control baseline document has been generated
echo "Control baseline document generated"
