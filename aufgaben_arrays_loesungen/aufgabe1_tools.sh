#!/usr/bin/env bash

# Aufgabe 1: Erstes Array erstellen

# Erstellt ein Array mit fünf DevOps-Tools.
tools=(git docker kubectl helm terraform)

# Gibt alle Elemente aus dem Array aus.
echo "Alle Tools: ${tools[@]}"

# Gibt das erste Element aus; Arrays starten bei Index 0.
echo "Erstes Tool: ${tools[0]}"

# Gibt die Anzahl aller Elemente im Array aus.
echo "Anzahl der Tools: ${#tools[@]}"
