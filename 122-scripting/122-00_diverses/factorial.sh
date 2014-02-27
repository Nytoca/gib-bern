#!/bin/bash
# Skript: M122_Scripts/factorial.sh

counter=$1
factorial=1
while [ $counter -gt 0 ]
do
    factorial=$(( $factorial * $counter  ))
    counter=$(( $counter - 1 ))
done

echo "Die Fakultät von $1! ist:"
echo $factorial

