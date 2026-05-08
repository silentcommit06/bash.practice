#!/bin/bash

# Show the menu options.
echo "Tagesplan auswählen:"
echo "1) Unterricht"
echo "2) Pause"
echo "3) Hausaufgabe"
echo "4) Ende"

# Read the user choice.
read auswahl

# Check the user choice with case.
case "$auswahl" in
    1)
        echo "Der Unterricht beginnt jetzt."
        ;;
    2)
        echo "Es ist Pause. Du kannst dich kurz erholen."
        ;;
    3)
        echo "Die Hausaufgabe soll bearbeitet werden."
        ;;
    4)
        echo "Der Tagesplan ist beendet."
        ;;
    *)
        echo "Fehler: Ungültige Eingabe."
        ;;
esac
