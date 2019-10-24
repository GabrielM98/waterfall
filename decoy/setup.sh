#!/bin/bash

#sudo -s
iptables -A FORWARD -i br0 -j NFQUEUE --queue-num 1
modprobe br_netfilter
sysctl -w net.bridge.bridge-nf-call-iptables=1
sysctl -w net.ipv4.ip_forward=1
