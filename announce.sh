#!/bin/bash

# serverID=$(ifconfig -a | awk '/^[a-z]/ { iface=$1; mac=$NF; next } /inet addr:/ { print mac }')
serverID=$(ifconfig | grep ether | sed -n '1 p' | awk '{print $2}')
serverID=${serverID//:/}
serverName="HimbeerserverDE"
hostName=$(hostname)

wget "http://server.himbeerserver.de/speedtest/announce.php?m=a&i=$serverID&n=$serverName&a=$hostName" -O /tmp/announceresponse.html
rm /tmp/announceresponse.html
