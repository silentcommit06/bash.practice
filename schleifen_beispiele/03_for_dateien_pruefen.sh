#!/usr/bin/env bash

# Beispiel 2: Mehrere Dateien prüfen
# Die Schleife prüft jede Datei aus dieser festen Liste.
for datei in bericht.txt kunden.txt log.txt
do
    # -f prüft, ob der Name wirklich eine normale Datei ist.
    if [ -f "$datei" ]; then
        # Diese Meldung erscheint, wenn die Datei existiert.
        echo "$datei existiert."
    else
        # Diese Meldung erscheint, wenn die Datei fehlt.
        echo "$datei fehlt."
    fi
done
