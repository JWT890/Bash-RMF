#!/bin/bash

# prints the name of the application
echo "Logging and Monitor Configuration"
echo "---------------------"

# checks to see if syslog is active or not
syslog_status=$(systemctl is-active rsyslog)
# prints the status of syslog
echo "Syslog Status: $syslog_status"

# prints the configuration of the .conf file
echo "Logrotate Configuration:"
cat /etc/logrotate.conf
