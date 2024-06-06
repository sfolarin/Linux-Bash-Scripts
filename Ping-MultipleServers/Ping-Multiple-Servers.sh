#!/bin/bash
echo "**********************************************************************************"
echo "*                            Author: Shola Folarin                               *"
echo "*                            Date Created: 06/03/2024                            *"
echo "*About: This script will ping servers and let us know if they are alive or dead  *"
echo "**********************************************************************************"
echo " "
#get the file containing the ips
IPLIST="/home/ubuntu/scripts/IPs.txt"

#loop into the file

for ip in $(cat $IPLIST)
do
ping -c 1 $ip &> /dev/null
if [ $? -eq 0 ]
then
	echo $ip server is alive
else
	echo $ip server is dead
fi
done
