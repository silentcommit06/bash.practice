#!/usr/bin/env bash

# Aufgabe 1: Mehrere Verzeichnisse nacheinander prüfen
# Szenario: Wichtige Standardordner im Home-Verzeichnis prüfen.

# Die for-Schleife geht jeden Ordnernamen nacheinander durch.
# Videos wurde als Erweiterung ergänzt.
for ordner in Dokumente Downloads Bilder Videos
do
    # -d prüft, ob der Ordner im Home-Verzeichnis existiert.
    if [ -d "$HOME/$ordner" ]; then
        echo "$ordner ist vorhanden."
    else
        echo "$ordner fehlt."
    fi
done
