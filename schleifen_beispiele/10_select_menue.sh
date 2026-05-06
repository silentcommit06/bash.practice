#!/usr/bin/env bash

# select-Schleife für einfache Menüs
# select erstellt automatisch ein nummeriertes Menü aus den Optionen.
select option in "Backup starten" "Logdatei anzeigen" "Beenden"
do
    # Die ausgewählte Option wird in der Variable option gespeichert und ausgegeben.
    echo "Du hast gewählt: $option"
    # break beendet das Menü nach einer Auswahl.
    break
done
