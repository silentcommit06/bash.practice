# Aufgabe 3: SSH Zugang prüfen 

# Schwierigkeit: einfach 

# Situation: Ein Administrator möchte vor einer Fernwartung prüfen, ob ein Benutzer für SSH vorbereitet ist. 

# Auftrag: Schreibe ein Bash Skript, das die folgende Logik umsetzt. 

# ☐ Frage den Benutzer, ob ein Public Key auf dem Server hinterlegt wurde. 

# ☐ Erlaubte Antworten sind ja oder nein. 

# ☐ Wenn ja eingegeben wird, soll ausgegeben werden: SSH Anmeldung mit Key kann getestet werden. 

# ☐ Wenn nein eingegeben wird, soll ausgegeben werden: Public Key zuerst in authorized_keys eintragen. 

# ☐ Verwende eine Variable mit einem sinnvollen Namen, zum Beispiel public_key_vorhanden. 

# Beispielablauf: 

# Ist der Public Key auf dem Server hinterlegt? ja 
# SSH Anmeldung mit Key kann getestet werden. 


#!/bin/bash

echo "Ist der Public Key auf dem Server hinterlegt?"
read public_key_vorhanden

if [ "$public_key_vorhanden" = "ja" ]; then
  echo "SSH Anmeldung mit Key kann getestet werden."
else
  echo "Public Key zuerst in authorized_keys eintragen."
fi