#!/usr/bin/env bash

# Aufgabe 5: until-Schleife zum Warten auf eine Datei
# Szenario: Das Skript wartet, bis freigabe.txt existiert.

# Name der Datei, auf die gewartet wird.
datei="freigabe.txt"

# until läuft, bis die Bedingung wahr ist.
# Die Bedingung ist wahr, sobald die Datei existiert.
until [ -f "$datei" ]
do
    echo "Warte auf $datei ..."
    sleep 2
done

echo "$datei wurde gefunden. Skript läuft weiter."
