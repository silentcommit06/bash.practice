#!/usr/bin/env bash

# Beispiel 1: Mehrere Benutzer begrüßen
# Die Variable benutzer bekommt nacheinander die Werte ali, ayse und mehmet.
for benutzer in ali ayse mehmet
do
    # Für jeden Benutzer wird eine Begrüßung ausgegeben.
    echo "Hallo $benutzer, willkommen im Linux-Kurs."
done
