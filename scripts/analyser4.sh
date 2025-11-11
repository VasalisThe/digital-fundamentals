#!/bin/bash

min=100; max=-1
for i in $(ls $1)
do
  for j in $(cat $1$i)
  do
    age=$(echo $j | cut -d ":" -f2)
    
    if [ $age -lt $min ]
    then
      min=$age
    fi
    
    if [ $age -gt $max ]
    then
      max=$age
    fi
    
  done
done

echo $min
echo $max
