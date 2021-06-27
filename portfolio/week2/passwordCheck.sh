#!/bin/bash

#Ask user to type secret password
read -p "Enter secret password" UserInput

#hash userInput with sha256sum
UserInput | sha256sum hashedUserInp

#set hashedPass variable to string output of secret.txt
cat ~/secret.txt hashedPass

#compare hashed passwords in both secret.txt file and the one the user entered previously
#if the hashes match, then print "Access Granted" with exit 0
#else print "Access Denied" with exit 1. 
if [$hashedPass eq $hahsedUserInp]
then
    echo "Access Granted"
    exit 0
else
    echo "Access Denied"
    exit 1
fi
