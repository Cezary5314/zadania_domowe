#!/usr/bin/env bash

USER_FILE_NAME=$1


if [ "$USER_FILE_NAME" != "" ]; then
    FILE_NAME=$USER_FILE_NAME
else
    FILE_NAME="data"
fi

if [ -e $FILE_NAME.txt ]; then
    > $FILE_NAME.txt
else
    touch $FILE_NAME.txt
fi

date -R > $FILE_NAME.txt