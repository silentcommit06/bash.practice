#!/usr/bin/env bash

# for-Schleife mit C-ähnlicher Schreibweise
# i=1 startet den Zähler, i<=5 ist die Bedingung, i++ erhöht i nach jedem Durchlauf.
for (( i=1; i<=5; i++ ))
do
    # Bei jedem Durchlauf wird der aktuelle Wert von i ausgegeben.
    echo "Durchlauf Nummer $i"
done
