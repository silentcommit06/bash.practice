# Aufgabe 5: Benutzerkonto nach Login Fehlern bewerten 

# Schwierigkeit: verschachtelt 

# Situation: Im Helpdesk meldet sich ein Mitarbeiter, weil er sich nicht anmelden kann. Das Skript soll eine erste Einschätzung geben. 

# Auftrag: Schreibe ein Bash Skript, das die folgende Logik umsetzt. 

# ☐ Frage den Benutzer nach der Anzahl fehlgeschlagener Login Versuche. 

# ☐ Frage danach, ob der Benutzer sein Passwort kennt. Erlaubte Antworten sind ja oder nein. 

# ☐ Wenn die Anzahl der Login Fehler größer oder gleich 5 ist, prüfe zusätzlich, ob der Benutzer sein Passwort kennt. 

# ☐ Wenn mindestens 5 Fehler vorhanden sind und der Benutzer sein Passwort kennt, gib aus: Konto möglicherweise gesperrt. Entsperrung prüfen. 



# ☐ Wenn mindestens 5 Fehler vorhanden sind und der Benutzer sein Passwort nicht kennt, gib aus: Passwort zurücksetzen und Konto prüfen. 

# ☐ Wenn weniger als 5 Fehler vorhanden sind, gib aus: Benutzer soll die Anmeldung erneut testen. 

# Beispielablauf: 

# Wie viele fehlgeschlagene Login Versuche gab es? 6 
# Kennt der Benutzer sein Passwort? nein 
# Passwort zurücksetzen und Konto prüfen. 

# Wichtig: Diese Aufgabe soll bewusst mit verschachteltem if else gelöst werden. Nutze also ein if innerhalb eines anderen if Blocks. 



#!/bin/bash

echo "Wie viele fehlgeschlagene Login Versuche gab es?"
read fehler
echo "Kennt der Benutzer sein Passwort?"
read kennt_passwort

if [ "$fehler" -lt 5 ]; then
  echo "Benutzer soll die Anmeldung erneut testen."
else
  if [ "$kennt_passwort" = "ja" ]; then
    echo "Konto möglicherweise gesperrt. Entsperrung prüfen."
  else
    echo "Passwort zurücksetzen und Konto prüfen."
  fi
fi