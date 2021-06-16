#!/bin/bash 

parsedInfo="$(./IpInfo.sh)"

AddressesOnly=$(echo "$parsedInfo" | sed -n '/IP Address:/ {

p

}')

echo -e "Display only IP Addresses from IpInfo.sh script:\n$AddressesOnly"