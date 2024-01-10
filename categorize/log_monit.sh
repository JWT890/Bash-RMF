#!/bin/bash

echo "Logging and Monitor Configuration"
echo "---------------------"

syslog_status=$(systemctl is-active rsyslog)
echo "Syslog Status: $syslog_status"

echo "Logrotate Configuration:"
cat /etc/logrotate.conf
