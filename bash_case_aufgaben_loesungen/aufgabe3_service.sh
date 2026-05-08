#!/bin/bash

# Ask the user for a service action.
read -p "Aktion eingeben (start/stop/restart/status): " aktion

# Check the action with case.
case "$aktion" in
    start|s)
        echo "Dienst wird gestartet."
        ;;
    stop|x)
        echo "Dienst wird gestoppt."
        ;;
    restart|r)
        echo "Dienst wird neu gestartet."
        ;;
    status|i)
        echo "Dienststatus wird angezeigt."
        ;;
    *)
        echo "Fehler: Diese Aktion ist ungültig."
        ;;
esac
