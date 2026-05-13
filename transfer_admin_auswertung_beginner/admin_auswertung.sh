#!/bin/bash

# Teilaufgabe 1: Dateien pruefen
# This function checks if one file exists.
pruefe_datei() {
    # "$1" is the first value given to the function.
    # -f checks if this value is an existing file.
    if [ -f "$1" ]; then
        # This message is shown when the file exists.
        echo "$1 ist vorhanden."
    else
        # This message is shown when the file is missing.
        echo "Fehler: $1 fehlt."
    fi
}

# This function checks all needed project files.
dateien_pruefen() {
    # The for loop goes through each filename one by one.
    for datei in system_log.txt users.txt tickets.txt
    do
        # The current filename is sent to the pruefe_datei function.
        pruefe_datei "$datei"
    done
}

# Teilaufgabe 2: Logdatei auswerten
# This function analyzes the log file.
auswertung_logs() {
    # Print a title for the ERROR lines.
    echo "ERROR-Zeilen:"
    # grep prints all lines that contain ERROR.
    grep "ERROR" system_log.txt

    # Print an empty line.
    echo ""
    # Print a title for the WARNING lines.
    echo "WARNING-Zeilen:"
    # grep prints all lines that contain WARNING.
    grep "WARNING" system_log.txt

    # Print an empty line.
    echo ""
    # Print a title for the ERROR count.
    echo "Anzahl ERROR:"
    # grep finds ERROR lines, and wc -l counts them.
    grep "ERROR" system_log.txt | wc -l

    # Print a title for the WARNING count.
    echo "Anzahl WARNING:"
    # grep finds WARNING lines, and wc -l counts them.
    grep "WARNING" system_log.txt | wc -l
}

# Teilaufgabe 3: Benutzerliste auswerten
# This function analyzes the user list.
auswertung_benutzer() {
    # Print a title for all usernames.
    echo "Alle Benutzernamen:"
    # awk uses : as separator and prints the first field, the username.
    awk -F: '{print $1}' users.txt

    # Print an empty line.
    echo ""
    # Print a title for users with roles.
    echo "Benutzer mit Rolle:"
    # awk prints the first field and second field, username and role.
    awk -F: '{print $1 " - " $2}' users.txt

    # Print an empty line.
    echo ""
    # Print a title for users that are not active.
    echo "Benutzer, die nicht active sind:"
    # awk prints users where the third field is not active.
    awk -F: '$3 != "active" {print $1 " - " $3}' users.txt
}

# Teilaufgabe 4: Tickets auswerten
# This function analyzes the ticket file.
auswertung_tickets() {
    # Print a title for open tickets.
    echo "Alle offenen Tickets:"
    # grep prints all lines that contain offen.
    grep "offen" tickets.txt

    # Print a title for high priority tickets.
    echo "Alle Tickets mit Prioritaet hoch:"
    # grep prints all lines that contain hoch.
    grep "hoch" tickets.txt
    
    # Print a title for open ticket numbers and users.
    echo "Offene Tickets mit Nummer und Benutzer:"
    # awk uses ; as separator and prints ticket number and responsible user for open tickets.
    awk -F';' '$3 == "offen" {print $1 " - " $5}' tickets.txt
}

# Teilaufgabe 5: Bericht erzeugen
# This function creates the report file.
erstelle_bericht() {
    # Create a new report file and write the title into it.
    echo "Admin Bericht" > bericht.txt
    # Add an underline to the report.
    echo "=============" >> bericht.txt
    # Add an empty line to the report.
    echo "" >> bericht.txt

    # Add the file check section title.
    echo "Dateipruefung:" >> bericht.txt
    # Run the file check and write the result into the report.
    dateien_pruefen >> bericht.txt
    # Add an empty line to the report.
    echo "" >> bericht.txt

    # Add the log analysis section title.
    echo "Log-Auswertung:" >> bericht.txt
    # Run the log analysis and write the result into the report.
    auswertung_logs >> bericht.txt
    # Add an empty line to the report.
    echo "" >> bericht.txt

    # Add the user analysis section title.
    echo "Benutzer-Auswertung:" >> bericht.txt
    # Run the user analysis and write the result into the report.
    auswertung_benutzer >> bericht.txt
    # Add an empty line to the report.
    echo "" >> bericht.txt

    # Add the ticket analysis section title.
    echo "Ticket-Auswertung:" >> bericht.txt
    # Run the ticket analysis and write the result into the report.
    auswertung_tickets >> bericht.txt
    # Add an empty line to the report.
    echo "" >> bericht.txt

    # Zusatzaufgabe: Add a short evaluation to the report.
    # Count all ERROR lines and save the number in a variable.
    error_anzahl=$(grep "ERROR" system_log.txt | wc -l)
    # Count all open high priority tickets and save the number in a variable.
    hoch_offen=$(grep "hoch;offen" tickets.txt | wc -l)
    # Count users that are not active and save the number in a variable.
    nicht_active=$(awk -F: '$3 != "active" {print $1}' users.txt | wc -l)

    # Add the evaluation section title.
    echo "Einschaetzung:" >> bericht.txt

    # Check if there is at least one ERROR line.
    if [ "$error_anzahl" -gt 0 ]; then
        # Add a warning to the report.
        echo "Warnung: Es gibt ERROR-Zeilen im Log." >> bericht.txt
    fi

    # Check if there is at least one open high priority ticket.
    if [ "$hoch_offen" -gt 0 ]; then
        # Add a warning to the report.
        echo "Warnung: Es gibt offene Tickets mit hoher Prioritaet." >> bericht.txt
    fi

    # Check if there is at least one locked or inactive user.
    if [ "$nicht_active" -gt 0 ]; then
        # Add a note to the report.
        echo "Hinweis: Gesperrte oder inaktive Benutzer sollten geprueft werden." >> bericht.txt
    fi

    # Show the user that the report was created.
    echo "Bericht wurde erstellt: bericht.txt"
}

# Teilaufgabe 6: Menue einbauen
# This variable stores the menu choice.
auswahl=0

# The menu repeats until the user chooses 6.
while [ "$auswahl" != "6" ]
do
    # Print an empty line.
    echo ""
    # Print the menu title.
    echo "Admin-Auswertung"
    # Print menu option 1.
    echo "1) Dateien pruefen"
    # Print menu option 2.
    echo "2) Logs auswerten"
    # Print menu option 3.
    echo "3) Benutzer auswerten"
    # Print menu option 4.
    echo "4) Tickets auswerten"
    # Print menu option 5.
    echo "5) Bericht erzeugen"
    # Print menu option 6.
    echo "6) Programm beenden"

    # Ask the user for a menu choice.
    read -p "Bitte Auswahl eingeben: " auswahl

    # Check the menu choice with case.
    case "$auswahl" in
        # If the user enters 1, check the files.
        1)
            dateien_pruefen
            ;;
        # If the user enters 2, analyze the logs.
        2)
            auswertung_logs
            ;;
        # If the user enters 3, analyze the users.
        3)
            auswertung_benutzer
            ;;
        # If the user enters 4, analyze the tickets.
        4)
            auswertung_tickets
            ;;
        # If the user enters 5, create the report.
        5)
            erstelle_bericht
            ;;
        # If the user enters 6, end the program.
        6)
            echo "Programm wird beendet."
            ;;
        # This block runs for every wrong input.
        *)
            echo "Ungueltige Auswahl."
            ;;
    # End the case statement.
    esac
# End the while loop.
done
