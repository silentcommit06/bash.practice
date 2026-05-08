#!/bin/bash

# Show a text so the user knows what to do.
echo "Wähle eine Option:"

# Show option 1.
echo "1) Backup starten"

# Show option 2.
echo "2) Logdatei anzeigen"

# Show option 3.
echo "3) Beenden"

# Read the user input and save it in auswahl.
read auswahl

# Check the value of auswahl.
case "$auswahl" in
    # This block runs when the user enters 1.
    1)
        # Print the message for option 1.
        echo "Backup wird gestartet..."
        ;;
    # This block runs when the user enters 2.
    2)
        # Print the message for option 2.
        echo "Logdatei wird angezeigt..."
        ;;
    # This block runs when the user enters 3.
    3)
        # Print the message for option 3.
        echo "Programm wird beendet."
        ;;
    # This block runs for every other input.
    *)
        # Print an error message.
        echo "Ungültige Eingabe."
        ;;
# End of the case statement.
esac
