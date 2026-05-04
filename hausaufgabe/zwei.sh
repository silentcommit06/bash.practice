#!/bin/bash

rolle="support"

if [ "$rolle" = "admin" ] || [ "$rolle" = "support" ]; then
  echo "Zugriff erlaubt."
else
  echo "Zugriff verweigert."
fi



# Aufgabe 2: Benutzerrolle für Support-System prüfen
# Ziel: ODER-Operator mit Textvergleichen anwenden.
# Aufgabenstellung: Ein kleines Support-Skript soll prüfen, ob ein Benutzer Zugriff auf ein Ticketsystem erhalten darf. Zugriff bekommen nur Benutzer mit der Rolle admin oder support.
# Vorgaben:
# •	Lege eine Variable rolle an, zum Beispiel rolle="support".
# •	Nutze den ODER-Operator.
# •	Bei admin oder support soll Zugriff erlaubt werden.
# •	Bei allen anderen Rollen soll Zugriff verweigert werden.
# Erwartete Ausgabe oder Verhalten: Die Rollen admin und support müssen akzeptiert werden, zum Beispiel gast nicht.
