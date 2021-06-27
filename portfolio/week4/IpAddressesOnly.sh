#!/bin/bash

#store output of IpInfo script as variable
parsedInfo="$(./IpInfo.sh)"

#run sed on parsedInfo variable with "IP Address:" as matching regex pattern
AddressesOnly=$(echo "$parsedInfo" | sed -n '/IP Address:/ {

p

}')

#print below string to console
echo -e "Display only IP Addresses from IpInfo.sh script:\n$AddressesOnly"
