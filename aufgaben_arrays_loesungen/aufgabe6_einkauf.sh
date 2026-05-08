#!/bin/bash

# Leere Einkaufsliste
einkaufsliste=()

# 3 Produkte eingeben
for nummer in 1 2 3
do
    echo "Produkt $nummer eingeben:"
    read produkt

    einkaufsliste+=("$produkt")
done

# Liste anzeigen
echo "Deine Einkaufsliste:"
echo "${einkaufsliste[@]}"