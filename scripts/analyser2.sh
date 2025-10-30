#!/bin/bash

for i in $(ls $1)
do
    for j in $(cat $i)
    do
        email=$(echo "$j" | cut -d ":" -f3)
        if [[ $email =~ .+@spbstu.ru ]]
        then
            name=$(echo "$j" | cut -d ":" -f1)
            age=$(echo "$j" | cut -d ":./" -f2)
            echo "Name:$name    Age:$age    Email:$email"
        fi
    done
done
