#!/bin/bash


service nginx start 
make run -C /home/root/webserv  &

echo ""


echo "http://"$(ip a | grep eth0 | grep inet | awk '{print $2}' | head -n1 | cut -d '/' -f 1):80 " - NGINX " 
echo "http://"$(ip a | grep eth0 | grep inet | awk '{print $2}' | head -n1 | cut -d '/' -f 1):4242 " - WEBSERV "


exec /bin/bash
