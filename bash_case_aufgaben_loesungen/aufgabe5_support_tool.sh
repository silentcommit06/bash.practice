#!/bin/bash

# Show the main support menu.
echo "Support-Tool"
echo "1) Passwortproblem"
echo "2) Netzwerkproblem"
echo "3) Speicherplatzproblem"
echo "4) Programm startet nicht"
echo "5) Beenden"

# Read the main menu choice.
read -p "Bitte Auswahl eingeben: " auswahl

# Check the main menu choice.
case "$auswahl" in
    1)
        echo "Passwortproblem:"
        echo "1) Passwort vergessen"
        echo "2) Konto gesperrt"
        echo "3) MFA funktioniert nicht"

        read -p "Bitte Unterpunkt wählen: " passwort

        case "$passwort" in
            1)
                echo "Schritte: Identität prüfen, neues Passwort setzen, Benutzer informieren."
                ;;
            2)
                echo "Schritte: Konto prüfen, Sperrgrund ansehen, Konto entsperren."
                ;;
            3)
                echo "Schritte: MFA-Gerät prüfen, Uhrzeit prüfen, neuen MFA-Code einrichten."
                ;;
            *)
                echo "Fehler: Ungültiger Passwort-Unterpunkt."
                ;;
        esac
        ;;
    2)
        echo "Netzwerkproblem:"
        echo "1) Kein WLAN"
        echo "2) VPN geht nicht"
        echo "3) DNS-Problem"

        read -p "Bitte Unterpunkt wählen: " netzwerk

        case "$netzwerk" in
            1)
                echo "Schritte: WLAN aktivieren, Netzwerk auswählen, Passwort prüfen."
                ;;
            2)
                echo "Schritte: Internet prüfen, VPN neu starten, Zugangsdaten prüfen."
                ;;
            3)
                echo "Schritte: DNS-Server prüfen, Cache leeren, Verbindung erneut testen."
                ;;
            *)
                echo "Fehler: Ungültiger Netzwerk-Unterpunkt."
                ;;
        esac
        ;;
    3)
        echo "Schritte: Speicherplatz mit df -h prüfen, große Dateien suchen, Papierkorb leeren."
        ;;
    4)
        echo "Schritte: Programm neu starten, Fehlermeldung lesen, Logdatei prüfen."
        ;;
    5)
        echo "Programm wird beendet."
        ;;
    *)
        echo "Fehler: Ungültige Eingabe im Hauptmenü."
        ;;
esac
