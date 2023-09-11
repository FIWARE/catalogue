#!/bin/bash

MY_PATH="`dirname \"$0\"`"

for file in "$MY_PATH/$1"/*.sh
do
    echo "Cloning Enabler: '$file'"
    $file $2 $3 $4
done

docker rmi -f $(docker images -a -q) | true