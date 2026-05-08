#!/bin/bash

# Ask the user if the script should continue.
read -p "Möchtest du fortfahren? ja/nein: " antwort

# Check the value of antwort.
case "$antwort" in
    # The pipe means: accept ja, j, yes, or y.
    ja|j|yes|y)
        # This message appears for a positive answer.
        echo "Das Programm läuft weiter."
        ;;
    # The pipe means: accept nein, n, or no.
    nein|n|no)
        # This message appears for a negative answer.
        echo "Das Programm wird beendet."
        ;;
    # This block runs for all other answers.
    *)
        # Ask the user to enter a valid answer.
        echo "Bitte gib ja oder nein ein."
        ;;
# End of the case statement.
esac
