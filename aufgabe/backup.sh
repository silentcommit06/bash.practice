# Aufgabe 4: Backup Entscheidung mit Dateigröße und Wichtigkeit 

# Schwierigkeit: verschachtelt 

# Situation: Ein Admin muss entscheiden, ob ein Ordner sofort gesichert werden soll. Dabei zählt nicht nur die Größe, sondern auch die Wichtigkeit der Daten. 

# Auftrag: Schreibe ein Bash Skript, das die folgende Logik umsetzt. 

# ☐ Frage den Benutzer nach der Ordnergröße in GB. 

# ☐ Frage danach, ob der Ordner wichtige Projektdaten enthält. Erlaubte Antworten sind ja oder nein. 

# ☐ Wenn die Ordnergröße größer oder gleich 10 ist, prüfe zusätzlich, ob wichtige Projektdaten enthalten sind. 

# ☐ Wenn die Größe größer oder gleich 10 ist und wichtige Daten enthalten sind, gib aus: Sofortiges Backup erforderlich. 

# ☐ Wenn die Größe größer oder gleich 10 ist, aber keine wichtigen Daten enthalten sind, gib aus: Backup einplanen, aber nicht dringend. 

# ☐ Wenn die Größe kleiner als 10 ist, gib aus: Kein sofortiges Backup notwendig. 

# Beispielablauf: 

# Wie groß ist der Ordner in GB? 14 
# Enthält der Ordner wichtige Projektdaten? ja 
# Sofortiges Backup erforderlich. 

# Wichtig: Diese Aufgabe soll bewusst mit verschachteltem if else gelöst werden. Nutze also ein if innerhalb eines anderen if Blocks. 

#!/bin/bash

echo "Wie groß ist der Ordner in GB?"
read groesse
echo "Enthält der Ordner wichtige Projektdaten?"
read wichtig

if [ "$groesse" -lt 10 ]; then
  echo "Kein sofortiges Backup notwendig."
else
  if [ "$wichtig" = "ja" ]; then
    echo "Sofortiges Backup erforderlich."
  else
    echo "Backup einplanen, aber nicht dringend."
  fi
fi