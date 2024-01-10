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
