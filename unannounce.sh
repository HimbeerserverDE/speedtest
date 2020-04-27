#!/bin/bash

serverID=$(ifconfig -a | awk '/^[a-z]/ { iface=$1; mac=$NF; next } /inet addr:/ { print mac }')
serverName="Speedtest server"
hostName=$(hostname)

wget "http://server.himbeerserver.de/speedtest/announce.php?m=u&i=$serverID&n=$serverName&a=$hostName" -O /tmp/announceresponse.html  
rm /tmp/announceresponse.html
