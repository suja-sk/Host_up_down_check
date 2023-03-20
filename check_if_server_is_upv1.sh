#!/bin/bash -x

check_server_up() {
    if  ping -c 5 "$1" >/dev/null 2>&1 
    then
        echo " Server $1 is up and running "
        return 0
    false
        echo " Server $1 is down or unreachable "
        return 1
    fi
}

# prompt user input the server name
read -p "please enter the server name : " server_name
# Call the funcation with user input

check_server_up "$server_name"

# safety check to check the retrun value of funcation

if [ $? -eq 0 ]; then
    echo " Server $server_name is up and running "
else
    echo " There is an error checking server $server_name "
fi


