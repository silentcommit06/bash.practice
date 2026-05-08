#!/bin/bash

# Ask the user for a filename.
read -p "Gib einen Dateinamen ein: " datei

# Check the filename pattern.
case "$datei" in
    # This pattern matches every name that ends with .txt.
    *.txt)
        # Print the message for text files.
        echo "Das ist eine Textdatei."
        ;;
    # This pattern matches every name that ends with .sh.
    *.sh)
        # Print the message for Bash scripts.
        echo "Das ist ein Bash Script."
        ;;
    # This pattern matches every name that ends with .log.
    *.log)
        # Print the message for log files.
        echo "Das ist eine Logdatei."
        ;;
    # This block runs if no pattern matches.
    *)
        # Print the message for unknown file types.
        echo "Unbekannter Dateityp."
        ;;
# End of the case statement.
esac
