#!/bin/bash
#

a=$1
b=$2

while [ $b -gt 0 ]; do
	r=$(($a%$b))
	a=$b
	b=$r
done
echo "ggT($1, $2) = $a"
