# Aufgabe 4: Kursanwesenheit prüfen
# Ziel: Sinnvolle Kombination von Bedingungen für Unterrichtssituationen bauen.
# Aufgabenstellung: Ein Teilnehmer gilt für den Tag als anwesend, wenn er entweder im Online-Unterricht eingeloggt ist oder vor Ort im Büro ist. Zusätzlich muss er mindestens 30 Minuten aktiv gewesen sein.
# Vorgaben:
# •	Lege Variablen online, vor_ort und aktive_minuten an.
# •	Beispiel: online="ja", vor_ort="nein", aktive_minuten=45.
# •	Nutze ODER für online oder vor Ort.
# •	Nutze UND für die Mindestzeit.
# •	Gib aus: Anwesenheit erfüllt oder Anwesenheit nicht erfüllt.
# Erwartete Ausgabe oder Verhalten: online ja + 45 Minuten soll zählen. vor Ort ja + 45 Minuten soll zählen. Nur 10 Minuten soll nicht zählen.


#!/bin/bash

online="ja"
vor_ort="nein"
aktive_minuten=45

if [[ ( "$online" = "ja" || "$vor_ort" = "ja" ) && "$aktive_minuten" -ge 30 ]]; then
  echo "Anwesenheit erfüllt."
else
  echo "Anwesenheit nicht erfüllt."
fi