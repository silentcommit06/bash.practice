# Aufgabe 5: Verschachtelte Prüfung für Systemwartung
# Ziel: Verschachtelte if-else-Strukturen mit UND/ODER kombinieren.
# Aufgabenstellung: Ein Wartungsskript soll zuerst prüfen, ob heute ein erlaubter Wartungstag ist. Erlaubt sind Samstag oder Sonntag. Wenn ja, soll zusätzlich geprüft werden, ob entweder kein Benutzer angemeldet ist oder der Modus auf force steht. Nur dann darf die Wartung starten.
# Vorgaben:
# •	Lege Variablen tag, angemeldete_benutzer und modus an.
# •	Beispiel: tag="Samstag", angemeldete_benutzer=0, modus="normal".
# •	Nutze eine äußere if-Abfrage für Samstag oder Sonntag.
# •	Nutze innen eine zweite if-Abfrage für keine Benutzer oder force-Modus.
# •	Gib klare Meldungen aus, warum die Wartung startet oder nicht startet.
# Erwartete Ausgabe oder Verhalten: Samstag + 0 Benutzer startet. Samstag + Benutzer angemeldet + force startet. Montag startet nie.


#!/bin/bash

tag="Samstag"
angemeldete_benutzer=0
modus="normal"

if [ "$tag" = "Samstag" ] || [ "$tag" = "Sonntag" ]; then
  if [ "$angemeldete_benutzer" -eq 0 ] || [ "$modus" = "force" ]; then
    echo "Wartung wird gestartet."
  else
    echo "Wartung nicht möglich. Benutzer sind noch angemeldet."
  fi
else
  echo "Heute ist kein Wartungstag."
fi