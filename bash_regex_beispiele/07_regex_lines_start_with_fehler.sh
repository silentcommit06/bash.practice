#!/bin/bash

# This script finds lines that start with Fehler.

# Create a small example file.
printf "Fehler: Datei fehlt\nInfo: alles ok\nFehler: Zugriff verweigert\n" > meldungen.txt

# The ^ symbol means start of the line.
grep "^Fehler" meldungen.txt
