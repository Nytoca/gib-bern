#!/bin/bash
#
# Script to Insert data from csv into sqlite3-db
# Autor: Nytoca <info@nytoca.ch>
#

database="$PWD/SIX_Bankenstamm.db"
source="$PWD/SIX_BankenstammCH.csv"
separator=";"

# Remove Database if exists and Create new one

if [ -e $database ]; then
        echo "Database exists. Do you want to remove?"
	read -n 1 removeDB

	if [ $removeDB = "y" ] || [ $removeDB = "Y" ] || [ $removeDB = "yes" ] || [ $removeDB = "YES" ]
	then
		echo -e "\rRemoving Database"
        #	rm $database

		# Get the Attributes from Source-csv and 
		attributeList=$( head -n 1 $source | tr "$separator" '\n' )

		sqlAttributeList="$( echo $attributeList | for i in $attributeList
		do
			cleanedAttribute="$( echo $i | grep -o [a-zA-Z] | tr [:upper:] [:lower:] | tr -d '\n' ) "

			# First Attribute is PRIMARY KEY
			primarySet="0"
			if [ $primarySet = "0" ]; then
				echo -n "$cleanedAttribute INTEGER PRIMARY KEY, "
				primarySet="1"
			else
				echo -n "$cleanedAttribute TEXT, "
			fi

		done )"
		echo $sqlAttributeList
		
	fi
fi 
