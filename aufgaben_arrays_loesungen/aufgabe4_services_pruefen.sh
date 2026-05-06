#!/usr/bin/env bash

# Aufgabe 4: Array mit for-Schleife durchlaufen

# Erstellt ein Array mit mehreren Dienstnamen.
services=(ssh cron docker nginx)

# Startet eine for-Schleife, die jeden Dienst aus dem Array durchgeht.
for service in "${services[@]}"
do
    # Gibt den aktuellen Dienst aus.
    echo "Prüfe Dienst: $service"

    # Optionaler Hinweis: systemctl status "$service" könnte den Dienststatus anzeigen.
done
