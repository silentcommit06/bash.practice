#!/usr/bin/env bash

# Beispiel mit break
# Die Schleife geht mehrere Dienstnamen nacheinander durch.
for dienst in ssh apache2 nginx
do
    # Wenn apache2 gefunden wird, soll die Suche sofort enden.
    if [ "$dienst" = "apache2" ]; then
        echo "apache2 gefunden. Suche wird beendet."
        # break beendet die komplette Schleife.
        break
    fi
    # Diese Ausgabe erscheint nur, solange apache2 noch nicht gefunden wurde.
    echo "Prüfe $dienst"
done
