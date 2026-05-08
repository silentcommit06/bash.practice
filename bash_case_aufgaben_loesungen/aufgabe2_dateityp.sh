#!/bin/bash

# Ask the user for a file name.
read -p "Bitte Dateinamen eingeben: " datei

# Check the file ending with case patterns.
case "$datei" in
    *.txt)
        echo "Das ist eine Textdatei."
        ;;
    *.sh)
        echo "Das ist ein Bash-Skript."
        ;;
    *.log)
        echo "Das ist eine Logdatei."
        ;;
    *.conf)
        echo "Das ist eine Konfigurationsdatei."
        ;;
    *)
        echo "Dateityp unbekannt."
        ;;
esac
