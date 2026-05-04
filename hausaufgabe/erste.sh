#!/bin/bash

freier_speicher_gb=20

if [ "$freier_speicher_gb" -ge 10 ] && [ -d "/home" ]; then
  echo "Backup kann gestartet werden."
else
  echo "Backup wird nicht gestartet."
fi



# Arbeitsauftrag
# Bearbeite die folgenden Aufgaben in Bash. Erstelle für jede Aufgabe eine eigene Datei, zum Beispiel aufgabe1.sh. Teste dein Skript mit verschiedenen Werten, damit du erkennst, ob deine Bedingungen richtig funktionieren.
# Aufgabe 1: Backup nur bei sinnvoller Kombination starten
# Ziel: UND-Operator mit zwei Bedingungen anwenden.
# Aufgabenstellung: Schreibe ein Bash-Skript, das ein Backup nur dann startet, wenn genug Speicherplatz vorhanden ist und das Verzeichnis /home existiert.
# Vorgaben:
# •	Lege eine Variable freier_speicher_gb an, zum Beispiel 20.
# •	Prüfe zusätzlich, ob das Verzeichnis /home existiert.
# •	Nutze den UND-Operator.
# •	Wenn beide Bedingungen stimmen, soll ausgegeben werden: Backup kann gestartet werden.
# •	Sonst soll ausgegeben werden: Backup wird nicht gestartet.
# Erwartete Ausgabe oder Verhalten: Bei genug Speicher und vorhandenem /home soll das Skript positiv reagieren.

