#!/bin/bash

begruessung() {
    echo "Willkommen im Systemprüfungs-Skript"
    echo "Angemeldeter Benutzer: $(whoami)"
}

pruefe_benutzer() {
    if [ "$(whoami)" = "root" ]; then
        echo "Du arbeitest als root."
    else
        echo "Du arbeitest als normaler Benutzer."
    fi
}

pruefe_dateien() {
    for datei in /etc/passwd /etc/hosts /etc/shadow
    do
        if [ -f "$datei" ]; then
            echo "$datei ist vorhanden."
        else
            echo "$datei ist nicht vorhanden."
        fi
    done
}

zeige_menue() {
    echo ""
    echo "1) Begrüßung anzeigen"
    echo "2) Benutzer prüfen"
    echo "3) Dateien prüfen"
    echo "4) Beenden"
}

begruessung
pruefe_benutzer
pruefe_dateien

auswahl=0

while [ "$auswahl" != "4" ]
do
    zeige_menue
    read -p "Bitte Auswahl eingeben: " auswahl

    case "$auswahl" in
        1)
            begruessung
            ;;
        2)
            pruefe_benutzer
            ;;
        3)
            pruefe_dateien
            ;;
        4)
            echo "Programm wird beendet."
            ;;
        *)
            echo "Ungültige Auswahl."
            ;;
    esac
done
