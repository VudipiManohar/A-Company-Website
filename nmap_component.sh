#!/bin/bash
if [ ! -d "/root/DailyReports" ]; then
mkdir /root/DailyReports
fi
a=$( date '+%F_%H:%M:%S' )
b=$( curl ifconfig.me )
c="/root/DailyReports/${a} ${b}"
printf "\n"
echo 'Generating Daily Report.....'
nmap -T4 -A -oN $c 
printf '\nReport Generated!\n'
echo 'Saved as'
echo $a