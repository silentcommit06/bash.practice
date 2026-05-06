#!/usr/bin/env bash

# Beispiel mit continue
# Die Schleife geht mehrere Benutzernamen nacheinander durch.
for benutzer in root emre testuser
do
    # root wird erkannt und soll nicht weiter geprüft werden.
    if [ "$benutzer" = "root" ]; then
        echo "root wird übersprungen."
        # continue überspringt nur diesen Durchlauf und macht mit dem nächsten weiter.
        continue
    fi
    # Diese Prüfung läuft für alle Benutzer außer root.
    echo "Benutzer wird geprüft: $benutzer"
done
