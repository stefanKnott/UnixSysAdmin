#!/bin/bash

echo "CPU AND MEMORY RESOURCES ---------------------"
echo "CPU Load Average: " `uptime | cut -d ' ' -f12` `uptime | cut -d ' ' -f12` `uptime | cut -d ' ' -f14` "    Fee RAM: " `free -h | head -n +2 | tail -1 | cut -d ' ' -f25 `

echo
echo

echo "NETWORK CONNECTIONS---------------------------"
echo "Io Bytes Received: " `cat /sys/class/net/lo/statistics/rx_packets` "    Bytes Transmitted: " `cat /sys/class/net/lo/statistics/tx_packets`
echo "enp0s3 Bytes received: " `cat /sys/class/net/enp0s3/statistics/rx_packets` "    Bytes Transmitted: " `cat /sys/class/net/enp0s3/statistics/tx_packets`
echo -n "Internet Connectivity: "
if [[ `cat /sys/class/net/lo/statistics/rx_packets` != "0" ]] || [[ `cat /sys/class/net/enp0s3/statistics/rx_packets` != "0" ]]
then
	echo -n "yes"
else
	echo -n "no"
fi

echo
echo

echo "ACCOUNT INFORMATION---------------------------"
echo "Total Users: " `wc -l /etc/passwd | cut -d ' ' -f1 ` "Number Active: " `users | wc -w`
echo "Most Frequently Used Shell: " `cat /etc/passwd | cut -d ':' -f7 | sort | uniq -c | sort -rn | head -n +1 | cut -d ' ' -f7`
