#!/usr/bin/env bash

# Aufgabe 2: Mehrere Dateien mit einer for-Schleife anlegen
# Szenario: Mehrere leere Logdateien automatisch erstellen.

# Der Ordner logs wird erstellt, falls er noch nicht existiert.
mkdir -p logs

# Die for-Schleife erstellt jede Datei aus der Liste.
# debug.log wurde als Erweiterung ergänzt.
for datei in app.log error.log access.log debug.log
do
    # touch legt die Datei an, wenn sie noch nicht existiert.
    touch "logs/$datei"
    echo "Datei wurde erstellt: logs/$datei"
done

# Zeigt alle Dateien im Ordner logs an.
ls -l logs

# Die Aufgabe verlangt, die Dateien danach mit rm wieder zu löschen.
for datei in app.log error.log access.log debug.log
do
    rm "logs/$datei"
    echo "Datei wurde gelöscht: logs/$datei"
done

# Der leere logs-Ordner bleibt bestehen.
