#!/usr/bin/env bash

# Praxisbeispiel 3: Ein einfaches Backup für mehrere Ordner
# Zielordner für die Backups festlegen.
ziel="/tmp/backups"
# Den Zielordner erstellen, falls er noch nicht existiert.
mkdir -p "$ziel"

# Die Schleife geht die Ordner Dokumente, Bilder und Downloads durch.
for ordner in Dokumente Bilder Downloads
do
    # Es wird geprüft, ob der Ordner im Home-Verzeichnis existiert.
    if [ -d "$HOME/$ordner" ]; then
        # tar erstellt ein komprimiertes Archiv für den gefundenen Ordner.
        tar -czf "$ziel/$ordner-backup.tar.gz" "$HOME/$ordner"
        echo "Backup erstellt für: $ordner"
    else
        # Diese Meldung erscheint, wenn der Ordner nicht vorhanden ist.
        echo "Ordner nicht gefunden: $ordner"
    fi
done
