#!/bin/bash

service nginx start 
make run -C /home/root/webserv  &
echo ""

exec /bin/bash
