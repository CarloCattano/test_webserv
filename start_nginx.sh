#!/bin/bash

service nginx start 
make run -C /home/root/webserv  &

echo ""

echo "http://"$(ip a | grep eth0 | grep inet | awk '{print $2}' | head -n1 | cut -d '/' -f 1):80 "\t- NGINX " 
echo "http://"$(ip a | grep eth0 | grep inet | awk '{print $2}' | head -n1 | cut -d '/' -f 1):XXXX"\t- WEBSERV CONFIG PORT "

exec /bin/bash
