#!/bin/bash


RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color


LOG_DIR="/var/log/sys_health"
mkdir -p "$LOG_DIR"
LOG_FILE="$lOG_DIR/dashboard_$(date +%Y%m%d_%H%M%S).log"

#HEADER
echo -e "${BLUE}==== System Health Dashobard - $(date) ====${NC}" | tee -a "$LOG_FILE"


#CPU Load

echo -e "${YELLOW}>> Uptime & Load:${NC}" | tee -a "$LOG_FILE"
uptime | tee -a "$LOG_FILE"


#Memory usage 

echo -e "${YELLOW}>> Memory Usage:${NC}" | tee -a "$LOG_FILE"
free -h | tee -a "LOG_FILE"


#Disk Usage
echo -e "${YELLOW}>> Disk Usage:${NC}" |tee -a "$LOG_FILE"
df -h |tee -a "$LOG_FILE"

#LOGGED-IN USERS

echo -e "${YELLOW}>> Disk Usage:${NC}" |tee -a "$LOG_FILE"
who |tee -a "$LOG_FILE"

#END OF Report
echo -e "${BLUE}==== END OF Report ====${NC}" | tee -a "$LOG_FILE"
