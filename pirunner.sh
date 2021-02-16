#!/bin/bash

cd /home/pi/Desktop/RpzwTimer && rm *
lynx -dump -source 192.168.0.180:9090 | sed 's/.*">//' | sed 's/<.*//' | sed '1,4d' | sed '/^$/d' | sed 's/^/wget 192.168.0.180:9090\//' | bash -
clear
sudo mono ./*.exe