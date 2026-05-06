#!/usr/bin/env bash

# Beispiel 1: Zähler bis 5
# Die Variable startet bei 1.
zahl=1

# Die Schleife läuft, solange zahl kleiner oder gleich 5 ist.
while [ $zahl -le 5 ]
do
    # Der aktuelle Wert wird angezeigt.
    echo "Zahl ist: $zahl"
    # Der Wert wird um 1 erhöht, damit die Schleife irgendwann endet.
    zahl=$((zahl + 1))
done
