#!/usr/bin/env bash

# Aufgabe 6: Benutzereingabe und Array

# Legt ein leeres Array für die Einkaufsliste an.
einkaufsliste=()

# Startet eine Schleife mit den Produktnummern 1, 2 und 3.
for nummer in 1 2 3
do
    # Fragt den Benutzer nach einem Produkt und speichert die Eingabe in produkt.
    read -p "Bitte Produkt $nummer eingeben: " produkt

    # Fügt das eingegebene Produkt zum Array hinzu.
    einkaufsliste+=("$produkt")
done

# Gibt die komplette Einkaufsliste aus.
echo "Einkaufsliste: ${einkaufsliste[@]}"
