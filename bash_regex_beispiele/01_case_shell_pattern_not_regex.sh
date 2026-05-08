#!/bin/bash

# This script shows that case uses shell patterns, not real regex.

# Ask the user to enter a file name.
read -p "Enter a filename: " datei

# Start a case statement to check the filename.
case "$datei" in
    # This shell pattern matches every filename that ends with .log.
    *.log)
        # Print a message for log files.
        echo "Logdatei erkannt"
        ;;
    # This shell pattern matches every filename that ends with .txt.
    *.txt)
        # Print a message for text files.
        echo "Textdatei erkannt"
        ;;
    # This default case runs if no pattern matches.
    *)
        # Print a message for unknown file types.
        echo "Unbekannter Dateityp"
        ;;
# End the case statement.
esac
