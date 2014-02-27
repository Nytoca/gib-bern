#!/bin/bash
# Skript: M122_Scripts/parameter.sh

# Dieses Skript zeigt den Umgang mit externen Parametern 
# Aufruf: ./parameter1.sh -a "es sind" 5 Parameter vorhanden 

# Parameter, die jeder Basher kennen muss!

# 0. Parameter
echo "Name dieses Skript: $0"

# Weitere Eingabeparameter
echo "1. Parameter: $1"
echo "2. Parameter: $2"
echo "3. Parameter: $3"
echo "4. Parameter: $4"
echo "5. Parameter: $5"

# Must to know
echo "Sie haben \"$1\" eingeben."
echo "Anzahl Parameter:" $#
echo "Alle Parameter als Einheit:" $*