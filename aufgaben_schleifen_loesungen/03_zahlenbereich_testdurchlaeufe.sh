#!/usr/bin/env bash

# Aufgabe 3: Zahlenbereich mit for nutzen
# Szenario: Zehn Testdurchläufe simulieren.

# Die Schleife läuft von 1 bis 10.
for nummer in 1 2 3 4 5 6 7 8 9 10
do
    # Bei Durchlauf 5 wird eine besondere Meldung ausgegeben.
    if [ "$nummer" -eq 5 ]; then
        echo "Besondere Meldung: Das ist Durchlauf Nummer 5."
    fi

    echo "Starte Testdurchlauf Nummer $nummer"
done

echo "Alle Testdurchläufe wurden beendet."
