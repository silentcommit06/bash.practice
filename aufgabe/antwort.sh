# Aufgabe 2: Prüfen, ob ein Backup heute gemacht wurde 

# Schwierigkeit: einfach 

# Situation: In einem kleinen IT Team wird täglich ein Backup gemacht. Der Teilnehmer soll entscheiden, ob ein Backup vorhanden ist. 

# Auftrag: Schreibe ein Bash Skript, das die folgende Logik umsetzt. 

# ☐ Frage den Benutzer: Wurde heute ein Backup gemacht? Erlaubte Antworten sind ja oder nein. 

# ☐ Wenn die Antwort ja ist, gib aus: Backup Status: erledigt. 

# ☐ Wenn die Antwort nein ist, gib aus: Backup Status: offen. Bitte Backup starten. 

# ☐ Nutze if und else. 

# ☐ Die Aufgabe muss nicht mit echten Dateien arbeiten. Es geht um die Logik. 

# Beispielablauf: 

# Wurde heute ein Backup gemacht? nein 
# Backup Status: offen. Bitte Backup starten. 

#!/bin/bash

echo "Wurde heute ein Backup gemacht?"
read antwort

if [ "$antwort" = "ja" ]; then
  echo "Backup Status: erledigt."
else
  echo "Backup Status: offen. Bitte Backup starten."
fi