#!/bin/bash

echo "####################### check internet ##########################"

ping -c1 localhost &> /dev/null

if [ $? -eq 0 ]
    then
        echo " Connection Sucessfully "
else
        echo " Connection Failed "
fi 
