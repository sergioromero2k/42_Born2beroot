#!/bin/bash

# Architecture
arch=$(uname -a)

# CPU physical
cpu_physical=$(grep "physical id" /proc/cpuinfo | sort | uniq | wc -l)

# CPU virtual
cpu_virtual=$(grep "processor" /proc/cpuinfo | wc -l)

# RAM
ram_total=$(free -m | awk '$1 == "Mem:" {print $2}')
ram_use=$(free -m | awk '$1 == "Mem:" {print $3}')
ram_percent=$(free -m | awk '$1 == "Mem:" {printf("%.2f", $3/$2*100)}')

# DISK
disk_total=$(df -BG | grep '/dev/' | grep -v '/boot' | awk '{disk_t = $2} END {print disk_t}')
disk_use=$(df -BG | grep '/dev/' | grep -v '/boot' | awk '{disk_u = $3} END {print disk_u}')
disk_percent=$(df -BG | grep '/dev/' | grep -v '/boot' | awk '{disk_u = $3} {disk_t = $2} END {printf("%.0d", disk_u/disk_t*100)}')

# CPU load
cpu_l=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {printf("%.1f", usage)}')

# Last boot
lb=$(who -b | awk '$1 == "system" {print $3 " " $4}')

# LVM use
lvmu=$(if lsblk -o TYPE | grep -iq "lvm"; then echo yes; else echo no; fi)

# TCP connections
ctcp=$(ss -s | grep -i established | wc -l)

# User log
ulog=$(users | wc -w)

# Network
ip=$(hostname -I | awk '{print $1}')
mac=$(ip link show | grep 'ether' | awk '{print $2}')

# Sudo
cmmd=$(journalctl COMMAND_SUDO | grep COMMAND | wc -l)

# Wall
wall "Architecture: $arch
#CPU Physical: $cpu_physical
#CPU: $cpu_virtual
#Memory Usage: $ram_use/${ram_total}MB (${ram_percent}%)
#Disk Usage: $disk_use/${disk_total}GB (${disk_percent}%)
#CPU load: $cpu_l%
#Last boot: $lb
#LVM use: $lvmu
#Connections TCP: $ctcp ESTABLISHED
#User log: $ulog
#Network: IP $ip ($mac)
#Sudo: $cmmd cmd"