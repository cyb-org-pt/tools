#!/bin/bash

DEV=${1:-eth0}
IP=`ip addr list dev $DEV | grep "inet " | sed "s/^ *//" | cut -d/ -f1 | cut -d\  -f2`
wget -q -O - --user="USER" --password="PASS" "https://members.dyndns.org/nic/update?hostname=HOSTNAME&myip=$IP"
echo 

# EOF
