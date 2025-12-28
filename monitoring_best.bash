#!/bin/bash

# ============================================
#  SYSTEM INFORMATION BROADCAST SCRIPT
# ============================================

# Architecture
arch=$(uname -a)

# CPU physical
cpu_physical=$(grep "physical id" /proc/cpuinfo | sort -u | wc -l)

# CPU virtual (logical cores)
cpu_virtual=$(grep -c "^processor" /proc/cpuinfo)

# RAM
read ram_total ram_used <<< $(free -m | awk '/Mem:/ {print $2, $3}')
ram_percent=$(awk "BEGIN {printf \"%.2f\", (${ram_used}/${ram_total})*100}")

# DISK
disk_total=$(df -BG --total | awk '/total/ {print $2}' | tr -d 'G')
disk_used=$(df -BG --total | awk '/total/ {print $3}' | tr -d 'G')
disk_percent=$(df -h --total | awk '/total/ {print $5}')

# CPU load (average over 1 min)
cpu_load=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | awk '{printf "%.1f", $1}')

# Last boot
last_boot=$(who -b | awk '{print $3 " " $4}')

# LVM use
lvm_use=$(lsblk | grep -qi lvm && echo "yes" || echo "no")

# TCP connections
tcp_connections=$(ss -t state established | wc -l)

# Logged users
user_log=$(who | wc -l)

# Network
ip=$(hostname -I | awk '{print $1}')
mac=$(ip link show | awk '/ether/ {print $2}')

# Sudo commands count
sudo_cmds=$(journalctl _COMM=sudo | grep -c COMMAND || echo 0)

# ============================================
#  BROADCAST MESSAGE
# ============================================

wall "
System Report:
-------------------------------
Architecture     : $arch
CPU Physical      : $cpu_physical
CPU Cores (virt.) : $cpu_virtual
Memory Usage      : ${ram_used}/${ram_total}MB (${ram_percent}%)
Disk Usage        : ${disk_used}/${disk_total}GB (${disk_percent})
CPU Load          : ${cpu_load}%
Last Boot         : $last_boot
LVM in use        : $lvm_use
TCP Connections   : $tcp_connections ESTABLISHED
Logged Users      : $user_log
Network           : IP $ip | MAC $mac
Sudo Commands     : $sudo_cmds
-------------------------------
Generated on $(date)
"
