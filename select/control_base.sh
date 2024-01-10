#!/bin/bash

function nist_generation80053() {
	echo "NIST SP 800-53 Control Baseline" > controls_baseline.txt
	echo "===============================" >> controls_baseline.txt
	echo "Control ID | Control Description" >> controls_baseline.txt
	echo "---------------------------------" >> controls_baseline.txt
	echo "AC1	 | Access Control Policy/Procedures" >> controls_baseline.txt
	echo "AC2 	 | Account Management" >> controls_baseline.txt
	echo "AC3 	 | Access Enforcement" >> controls_baseline.txt
	echo "AC4	 | Information Flow Enforcement" >> controls_baseline.txt
}

function iso27001_generation() {
	echo "ISO 27001 Control Baseline" > controls_baseline.txt
	echo "===========================" >> controls_baseline.txt
	echo "Control ID | Control Description" >> controls_baseline.txt
	echo "---------------------------------" >> controls_baseline.txt
	echo "IS1 	 | Information Security Policy" >> controls_baseline.txt
	echo "IS2 	 | Access Control" >> controls_baseline.txt
}

function cis_generator() {
	echo "CIS Controls Baseline" > controls_baseline.txt
	echo "==============================" >> controls_baseline.txt
	echo "Control ID | Control Description" >> controls_baseline.txt
	echo "----------------------------------" >> controls_baseline.txt
	echo "CIS1 	 | Inventory and Control of Hardware Assets" >> controls_baseline.txt
	echo "CIS2 	 | Data Protection" >> controls_baseline.txt
}

echo "Select a control baseline: "
echo "1. NIST SP 800-53"
echo "2. ISO 27001"
echo "3. CIS Controls"
read -p "Enter you choice (1/2/3): " choice

case $choice in 
    1) echo "Generating NIST SP 800-53 control baseline document.."
       nist_generation80053
       ;;
    2) echo "Generating ISO 27001 control baseline document.."
       iso27001_generation
       ;;
    3) echo "Generating CIS Controls baseline document.."
       cis_generator
       ;;
    *) echo "Invalid choice. Stopping"
       exit 1
       ;;
esac

echo "Control baseline document generated"
