#!/bin/bash
#
#Version 2
#

csvFile="SIX_BankenstammCH.csv"
dbFile="SIX_Bankenstamm.db"
table="SIX"
separator=";"


attributeList="$( head -n 1 $csvFile | iconv -f ISO-8859-1 | tr $separator '\n' )"

cleanedAttributeList="$( for i in $attributeList
do
	# Cut Special Chars and make upper to lower case
	cleanedAttribute=$(echo $i | grep -o [a-zA-Z] | tr [:upper:] [:lower:] | tr -d '\n')

	echo "$cleanedAttribute TEXT, "

done)"

cleanedAttributeList="$( echo $cleanedAttributeList | rev | cut -c 2- | rev )"

sqlite3 $dbFile "CREATE TABLE $table ($cleanedAttributeList);"

echo -e ".separator \";\"\n.import $csvFile $table" | sqlite3 $dbFile
