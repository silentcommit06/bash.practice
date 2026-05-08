#!/bin/bash

# Tickets speichern
tickets=("Passwort vergessen" "Drucker kaputt" "VPN geht nicht")

# Nummer starten
nummer=1

# Alle Tickets anzeigen
for ticket in "${tickets[@]}"
do
    echo "$nummer. $ticket"
    nummer=$((nummer + 1))
done