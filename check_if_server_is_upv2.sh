#!/bin/bash

RED_COLOR='\e[0;31m'
GRN_COLOR='\e[0;32m'
RST_COLOR='\e[0m'

check_server_up(){
# Perform ping 5 time to check if server is up
if ping -c 5 "$1" > /dev/null 2>&1
then
    echo "Server $1 is up and running"
    return 0
else
    echo "Server $1 is down or unreachable"
    return 1
fi        
}

# prompt user to enter the server name input
read -p " please enter the name of the file containing server name: " server_name_file

# check if file is exits
if [ ! -f $server_name_file ]; then
    echo " file $server_name_file not found "
    exit 1
fi

#Read each server name from the file and verify there status
while read -r server_name
do
    check_server_up "$server_name"
    if [ $? -eq 0 ]
    then
        echo -e "${GRN_COLOR} Server $server_name is up and running"
    else
        echo -e "${RED_COLOR} There is an error checking server $server_name "
    fi

done < "$server_name_file"