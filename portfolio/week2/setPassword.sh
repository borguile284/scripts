#!/bin/bash

#Ask user to enter folder where to save secret.txt in
read -p "enter name of folder you wish to save password in:" folderName

#Silent prompt to ask user to enter password to save into secret.txt
read -sp "create password:" Pass

#set working directory dictated by user
cd ~/scripts/portfolio/$folderName

#hash the user created password using sha256 encryption
echo $Pass | sha256sum hashedPass

#append the hashed password to secret.txt file
echo $hashedPass >> secret.txt
