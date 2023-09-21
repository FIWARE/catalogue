#!/bin/bash

MY_PATH="`dirname \"$0\"`"


for file in "$MY_PATH/$1"/*.sh
do
    if [[ $file == *"/x-"* ]]; then
      if [[ "$2" ]]; then
        echo "Skipping: '$file'"
      else
         echo "Reporting: '$file'"
      fi
      $file
    else
      if [[ "$2" ]]; then
        echo "Cloning Enabler: '$file'"
      else
         echo "Reporting: '$file'"
      fi
      $file $2 $3 $4
    fi
done

for i in "$@" ; do
    if [[ $i == "clean" ]]; then
        docker rmi -f $(docker images -a -q) | true
    fi
done
