#!/bin/bash
# Autor: Nytoca <info@nytoca.ch>
#

echo "Insert Names"
read name

while true; do

	if [ "$name" = "quit" ]; then
		echo "Bye"
		exit 0
	else
		echo $name >> phonelist.list
		echo "OK - $name"
		read name
	fi
done
