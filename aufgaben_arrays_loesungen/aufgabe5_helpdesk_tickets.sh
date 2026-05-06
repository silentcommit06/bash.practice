#!/usr/bin/env bash

# Aufgabe 5: Mini Helpdesk Liste

# Erstellt ein Array mit drei Tickettexten.
tickets=("Passwort vergessen" "Drucker geht nicht" "VPN funktioniert nicht")

# Erstellt eine Nummerierung, die bei 1 startet.
nummer=1

# Startet eine for-Schleife für jedes Ticket im Array.
for ticket in "${tickets[@]}"
do
    # Gibt das aktuelle Ticket mit der sichtbaren Nummer aus.
    echo "$nummer) $ticket"

    # Erhöht die Nummer nach jeder Ausgabe um 1.
    nummer=$((nummer + 1))
done
