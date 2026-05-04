# Aufgabe 1: Speicherplatz Warnung für ein Home Verzeichnis 

# Schwierigkeit: einfach 

# Situation: Ein Support Mitarbeiter möchte schnell prüfen, ob das Home Verzeichnis eines Benutzers zu viel Speicher belegt. 

# Auftrag: Schreibe ein Bash Skript, das die folgende Logik umsetzt. 

# ☐ Frage den Benutzer nach der aktuell belegten Größe des Home Verzeichnisses in GB. 

# ☐ Wenn der Wert größer oder gleich 20 ist, soll eine Warnung ausgegeben werden. 

# ☐ Wenn der Wert kleiner als 20 ist, soll ausgegeben werden, dass der Speicherverbrauch in Ordnung ist. 

# ☐ Nutze eine sinnvolle Variable, zum Beispiel speicher_gb. 

# ☐ Achte auf eine klare Ausgabe für den Benutzer. 

# Beispielablauf: 

# Wie viel GB belegt dein Home Verzeichnis? 24 
# Warnung: Das Home Verzeichnis sollte bereinigt oder gesichert werden. 

#!/bin/bash

echo "Wie viel GB belegt dein Home Verzeichnis?"
read speicher_gb

if [ "$speicher_gb" -ge 20 ]; then
  echo "Warnung: Das Home Verzeichnis sollte bereinigt oder gesichert werden."
else
  echo "Der Speicherverbrauch ist in Ordnung."
fi