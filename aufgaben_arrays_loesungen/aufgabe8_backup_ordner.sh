#!/usr/bin/env bash

# Aufgabe 8: Praxisaufgabe Backup-Ordner

# Erstellt ein Array mit Ordnern, die für Backups vorgemerkt werden.
ordner=(/home /etc /var/log)

# Durchläuft jeden Ordner im Array.
for eintrag in "${ordner[@]}"
do
    # Gibt den aktuellen Ordner mit dem geforderten Satz aus.
    echo "Dieser Ordner wird für ein Backup vorgemerkt: $eintrag"
done

# Fügt den Ordner /opt zum Array hinzu.
ordner+=(/opt)

# Gibt alle Ordner aus dem Array aus.
echo "Alle Ordner: ${ordner[@]}"

# Gibt die Gesamtanzahl der Ordner aus.
echo "Gesamtanzahl: ${#ordner[@]}"
