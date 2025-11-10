#!/bin/bash

for i in $(ls $1)
do  
  for j in $(cat $1$i)
  do
    age=$(echo $j | cut -d ":" -f2)
    
    if [ $age -ge 18]
    then
      old=$((old+1))
    else
      young=$((young+1)
    fi
  done
done

echo "Old people: $old; Young people: $young"
