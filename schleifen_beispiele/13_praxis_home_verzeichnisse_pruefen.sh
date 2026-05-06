#!/usr/bin/env bash

# Praxisbeispiel 1: Home-Verzeichnisse prüfen
# /home/* steht für alle Einträge im Ordner /home.
for ordner in /home/*
do
    # -d prüft, ob der Eintrag ein Verzeichnis ist.
    if [ -d "$ordner" ]; then
        # Gefundene Home-Verzeichnisse werden ausgegeben.
        echo "Home-Verzeichnis gefunden: $ordner"
    fi
done
