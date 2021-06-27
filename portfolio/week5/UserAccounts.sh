#!/bin/bash

#Print title "User Accounts"
echo "User Accounts:"

#Begin running AWK on file '/etc/passwd' with regex looking for records with exact string "/bin/bash"
    #define ":" as the coloumn or field separator
    #print the field names with blue font colour and with '%-s' as how many characters long
    #print the strings in first, third, fourth, sixth and seventh coloumn under certain font colour and character size
grep "/bin/bash" /etc/passwd | awk ' BEGIN {

    FS=":";

    printf ("| \033[34m%-16s\033[0m | \033[34m%-6s\033[0m | \033[34m%-7s\033[0m | \033[34m%-31s\033[0m | \033[34m%-17s\033[0m |\n", "Username", "UserID", "GroupID", "Home", "Shell");

	print "_____________________________________________________________________________________________";

}

{

    printf("| \033[33m%-16s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-31s\033[0m | \033[35m%-17s\033[0m |\n", $1, $3, $4, $6, $7);

}

END {

    print("_____________________________________________________________________________________________");

}'
