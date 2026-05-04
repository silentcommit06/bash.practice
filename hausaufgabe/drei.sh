# Aufgabe 3: Paketinstallation absichern
# Ziel: UND und ODER in einfachen Admin-Situationen verstehen.
# Aufgabenstellung: Schreibe ein Skript, das entscheidet, ob ein Paket installiert werden darf. Die Installation darf nur stattfinden, wenn der Benutzer root ist und der Paketname entweder nginx oder apache2 ist.
# Vorgaben:
# •	Nutze eine Variable benutzer, zum Beispiel benutzer="root".
# •	Nutze eine Variable paket, zum Beispiel paket="nginx".
# •	Prüfe: Benutzer ist root UND Paket ist nginx ODER apache2.
# •	Achte auf Klammern, damit die Logik korrekt ist.
# •	Nutze am besten [[ ... ]] für die Bedingung.
# Erwartete Ausgabe oder Verhalten: root + nginx oder root + apache2 ist erlaubt. root + firefox ist nicht erlaubt. emre + nginx ist auch nicht erlaubt.


#!/bin/bash

benutzer="root"
paket="nginx"

if [[ "$benutzer" = "root" && ( "$paket" = "nginx" || "$paket" = "apache2" ) ]]; then
  echo "Installation erlaubt."
else
  echo "Installation nicht erlaubt."
fi