#!/bin/bash

echo ""
echo "This script programmed by Wang Tongze"
echo "A grade 10 student under Github Education Programme in Beijing, China"
echo "More info on http://wangtongze.com/about"
echo ""

#check if root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root"
   echo "Script Aborted"
   exit 1
fi

echo "Root Permission Granted"

exit 0
