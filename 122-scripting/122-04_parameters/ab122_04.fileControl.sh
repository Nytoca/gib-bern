#!/bin/bash
#

if [ $# -ne 2 ]; then
	echo "Usage: $0 File1 File2"
else

	if [ ! -e $1 ]; then
		echo "Datei $1 existiert nicht."
	else
		echo "Datei $1 existiert."
	fi
	if [ ! -e $2 ]; then
		echo "Datei $2 existiert nicht."
	else
		echo "Datei $2 existiert."
	fi

fi
