#!/usr/bin/env bash

TARGET_NAME=$1
USER_IP=$2

if [ "$USER_IP" != "" ]; then
    TARGET_IP=$USER_IP
else
    TARGET_IP=192.168.56.123
fi


echo "Checking if target $TARGET_NAME is present"

ping $TARGET_IP -c4 -t4 >/dev/null 2>&1
result=$?

if [ "$result" != "0" ]; then
    echo "Target is not reachable"
    exit $result
else
    echo "Target is reachable"   
    ssh $USER_IP exit 0
    result=$?

    if [ "$result" != "0" ]; then
        echo "Connection is not reachable"
        exit $result
    else
        echo "Connection is reachable" 
        exit $result
    fi
fi
