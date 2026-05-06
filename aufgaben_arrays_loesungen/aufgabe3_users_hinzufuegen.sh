#!/usr/bin/env bash

# Aufgabe 3: Werte hinzufügen

# Erstellt ein Array mit drei Benutzern.
users=(ali sara mehmet)

# Fügt den Benutzer emre am Ende des Arrays hinzu.
users+=(emre)

# Fügt den Benutzer ayse am Ende des Arrays hinzu.
users+=(ayse)

# Gibt alle Benutzer aus dem Array aus.
echo "Alle Benutzer: ${users[@]}"

# Gibt die neue Anzahl der Benutzer aus.
echo "Anzahl der Benutzer: ${#users[@]}"
