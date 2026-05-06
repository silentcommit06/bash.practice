#!/usr/bin/env bash

# Aufgabe 4: Eingabe wiederholen, bis sie korrekt ist
# Szenario: Nur j oder n soll akzeptiert werden.

# Die Variable ist am Anfang leer.
antwort=""

# Die Schleife fragt so lange, bis die Antwort j oder n ist.
while [ "$antwort" != "j" ] && [ "$antwort" != "n" ]
do
    read -p "Backup jetzt starten? j/n: " antwort
done

# Nach einer gültigen Eingabe entscheidet if, was passieren soll.
if [ "$antwort" = "j" ]; then
    echo "Backup wird gestartet."
else
    echo "Backup wird nicht gestartet."
fi
