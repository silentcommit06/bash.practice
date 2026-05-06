#!/usr/bin/env bash

# Aufgabe 2: Einzelne Werte auslesen

# Erstellt ein Array mit vier Servernamen.
server=(web01 web02 db01 backup01)

# Gibt das zweite Element aus; web02 steht an Index 1.
echo "Der zweite Server ist: ${server[1]}"

# Gibt das vierte Element aus; backup01 steht an Index 3.
echo "Der Backup-Server ist: ${server[3]}"
