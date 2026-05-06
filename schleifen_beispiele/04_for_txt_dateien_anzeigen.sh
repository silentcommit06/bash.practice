#!/usr/bin/env bash

# Beispiel 3: Alle .txt-Dateien anzeigen
# *.txt steht für alle Dateien im aktuellen Ordner, die auf .txt enden.
for datei in *.txt
do
    # Der gefundene Dateiname wird ausgegeben.
    echo "Gefundene Textdatei: $datei"
done
