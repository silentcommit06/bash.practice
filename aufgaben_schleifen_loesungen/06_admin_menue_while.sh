#!/usr/bin/env bash

# Aufgabe 6: Menü mit while-Schleife bauen
# Szenario: Ein Admin-Menü läuft, bis der Benutzer Beenden auswählt.

# Die Variable speichert die Auswahl des Benutzers.
auswahl=""

# Durch den zusätzlichen fünften Menüpunkt endet das Menü jetzt bei Auswahl 5.
while [ "$auswahl" != "5" ]
do
    echo ""
    echo "Admin-Menü"
    echo "1) Aktuelles Datum anzeigen"
    echo "2) Aktuellen Benutzer anzeigen"
    echo "3) Aktuelles Verzeichnis anzeigen"
    echo "4) Speicherplatz anzeigen"
    echo "5) Beenden"

    read -p "Bitte Auswahl eingeben: " auswahl

    if [ "$auswahl" = "1" ]; then
        date
    elif [ "$auswahl" = "2" ]; then
        whoami
    elif [ "$auswahl" = "3" ]; then
        pwd
    elif [ "$auswahl" = "4" ]; then
        df -h
    elif [ "$auswahl" = "5" ]; then
        echo "Programm wird beendet."
    else
        echo "Ungültige Auswahl. Bitte erneut versuchen."
    fi
done
