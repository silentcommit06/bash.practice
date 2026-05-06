#!/usr/bin/env bash

# Beispiel 2: Eingabe wiederholen, bis sie korrekt ist
# Die Variable ist am Anfang leer.
eingabe=""

# Die Schleife läuft, solange die Eingabe nicht ja ist.
while [ "$eingabe" != "ja" ]
do
    # read fragt den Benutzer und speichert die Antwort in der Variable eingabe.
    read -p "Möchtest du fortfahren? Schreibe ja: " eingabe
done

# Diese Ausgabe kommt erst, wenn der Benutzer ja eingegeben hat.
echo "Danke, das Skript läuft weiter."
