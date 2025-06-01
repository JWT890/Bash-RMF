# Bash-RMF

Purpose of this repo is a project to familarize Risk Management Framework, RMF, by automating certain tasks in the RMF process

The NIST RMF Framework is a guide for helping organizations mitigate, resolve, or manage vulnerabilites in their systems. The important steps are Prepare, Categorize, Select, Implement, Assess, Authorize, and Monitor.   
The Prepare step involves actions taken to get a team or organization ready to manage risks regarding info and the scope of the process entailed and involves management involvement.   
The Categorize step involves sorting the data based on how sensitive it is based on impact level and uses the CIA triad or Confidentiality, Integrity, and Availability.   
The Select step involves choosing the appropriate tools or actions to protect the system/info from risk and or vulnerabilities according to the security baselines.   
The Assess step involves making sure that the controls are in place and where they need to be.   
The Authorize step involves getting a senior management official to allow operation and reviewing results from a risk assessment.   
The Monitor step involves watching for any incidents to happen and reporting for when one does or if changes occur.   

Explainer of script functions here soon:   
Prepare:  
riskscore.sh satisifies NIST SP 800-60 and 160  
risk_assess_plan.sh generates and creates an assessment plan  
scope.sh defines the scope through taking certain criteria  
risk_man_strategy creates a risk management strategy based on tolerance, acceptance, and communication  

Categorize:  
infotype.sh and autotypescan.sh satisifies NIST SP 800-160  
infotype.sh script has the user choose a file to categorize based on levels and classification type  
autotypescan.sh script has the user enter either a file or directory to scan based on certain keywords such as Unclassified and Public  
log_monit.sh script checks the syslog status using systemctl and prints it status and prints the contents of the logrotate.conf file

Select:  
contin_monit.sh script creates a Continous Monitoring document to define/select a strategy regarding monitoring  
control_base.sh script creates a Controls Baseline document determined by asking the user to select which baseline they want to have from either NIST, CIS, or ISO

Bash NIST 800-53 checker_script.sh
The purpose of this script is to check for system compliance with NIST 800-53 by automating select controls with Bash
AC-6 (Least Priveledge): makes sure that all accounts have their respective permissions based on UID
CM-6 (Password policies): makes sure that all passwords have a max, min, and warn range before expiration
CS-28 (Sensitive file permissions): Makes sure only root has access to sensitive info
SI-2 (Up to date system): Checks for system is up to date with latest patch or update
SC-28 (Protection of Information at Rest): Checks for if the disk is encrypted. If not, manually enable it
