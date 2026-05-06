#!/usr/bin/env bash

# Praxisbeispiel 2: Mehrere Logdateien nach Fehlern durchsuchen
# /var/log/*.log steht für Logdateien im Ordner /var/log.
for logfile in /var/log/*.log
do
    # Zeigt an, welche Logdatei gerade geprüft wird.
    echo "Prüfe $logfile"
    # grep sucht ohne Beachtung von Groß-/Kleinschreibung nach dem Wort error.
    grep -i "error" "$logfile"
done
