#!/bin/bash

# Ask the user for a role.
read -p "Rolle eingeben (admin/support/user/guest): " rolle

# Ask if the output should be short or detailed.
read -p "Ausgabe kurz oder ausführlich? " format

# First check the role.
case "$rolle" in
    admin|Administrator)
        kurze_ausgabe="Admin: volle Rechte."
        lange_ausgabe="Admin darf alles verwalten, Systeme ändern und Benutzer verwalten."
        ;;
    support|Supporter)
        kurze_ausgabe="Support: Hilfe und Tickets."
        lange_ausgabe="Support darf Tickets bearbeiten und Benutzer bei Problemen unterstützen."
        ;;
    user|Benutzer)
        kurze_ausgabe="User: eigene Dateien."
        lange_ausgabe="User darf eigene Dateien bearbeiten und normale Programme benutzen."
        ;;
    guest|Gast)
        kurze_ausgabe="Guest: nur lesen."
        lange_ausgabe="Guest darf nur lesen und hat keine Schreibrechte."
        ;;
    *)
        echo "Fehler: Diese Rolle ist unbekannt."
        exit 1
        ;;
esac

# Then check the output format.
case "$format" in
    kurz)
        echo "$kurze_ausgabe"
        ;;
    ausführlich)
        echo "$lange_ausgabe"
        ;;
    *)
        echo "Fehler: Ausgabeformat muss kurz oder ausführlich sein."
        ;;
esac
