#!/bin/bash
# Autor: Nytoca <info@nytoca.ch>
#

database="$PWD/linuxusers.db"
tablename="LinuxUsers"
userFilter="vm root tux"

# Remove Database if exists and Create new one

if [ -e $database ]; then
	printf "Removing $database\n\n"
	rm $database
fi 

sqlite3 $database <<EOF
CREATE TABLE $tablename (id INTEGER PRIMARY KEY, username TEXT, uid INTEGER, \
gid INTEGER, homedir TEXT);
EOF

for i in ${userFilter}; do
	for user in $( cat /etc/passwd | grep $i | cut -d \: -f 1 ); do

		userName="$( cat /etc/passwd | grep $user | cut -d \: -f 1 )"
		userID="$( cat /etc/passwd | grep $user | cut -d \: -f 3 )"
		groupID="$( cat /etc/passwd | grep $user | cut -d \: -f 4 )"
		userHome="$( cat /etc/passwd | grep $user | cut -d \: -f 6 )"

		echo "Found User $userName, UID $userID, GID $groupID, Home $userHome"

		# Getting highest Primary from DB
		currentMax=$( sqlite3 $database "SELECT MAX(id) FROM $tablename" )
		if [ -z $currentMax ]; then
			currentMax=1
		else
			currentMax=$(($currentMax + 1))
		fi
		echo "Next ID is $currentMax"

		$( sqlite3 $database "INSERT INTO $tablename VALUES ($currentMax, '$userName', $userID, $groupID, '$userHome')" )

	done
done

echo ""
echo "Current Users in DB:"
echo "$(sqlite3 $database "SELECT * FROM $tablename")"
