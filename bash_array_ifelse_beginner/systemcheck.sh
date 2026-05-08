#!/bin/bash

# Array  server names
server=("web01" "db01" "backup01" "mail01" "proxy01")

# Array with the status
status=("online" "offline" "online" "wartung" "online")

echo "Systemcheck startet"

# Serverliste
echo "Serverliste:"

nummer=1

# Loop  servers
for name in "${server[@]}"
do
    echo "$nummer) $name"
    nummer=$((nummer + 1))
done


# Ask user
echo "Welche Nummer prüfen?"
read eingabe

# Check if number is valid
if [ "$eingabe" -ge 1 ] && [ "$eingabe" -le 5 ]; then
    index=$((eingabe - 1))
    echo "Gewählt: ${server[$index]}"
else
    echo "Nummer falsch"
fi

echo "Statuscheck:"

offline=0

# Loop status values
for i in 0 1 2 3 4
do
    # If server is online
    if [ "${status[$i]}" = "online" ]; then
        echo "${server[$i]} ist online: OK"

    # If server is offline
    elif [ "${status[$i]}" = "offline" ]; then
        echo "${server[$i]} ist offline: Problem"
        offline=$((offline + 1))

    # If server is working on
    else
        echo "${server[$i]} ist in Wartung: Hinweis"
    fi
done


# Show offline summary
if [ "$offline" -eq 0 ]; then
    echo "Kein Server ist offline."
else
    echo "Offline Server: $offline"
fi

# Zusatzaufgabe 2
# Change status

echo "Welche Servernummer Status ändern?"
read nummer

index=$((nummer - 1))

echo "Neuen Status eingeben:"
read neuer_status

status[$index]="$neuer_status"

echo "Neuer Status: ${status[$index]}"

# Zusatzaufgabe 3
# Save report

echo "Systemcheck Bericht" > systemcheck-report.txt

for i in 0 1 2 3 4
do
    echo "${server[$i]} ${status[$i]}" >> systemcheck-report.txt
done

echo "Bericht gespeichert"

echo "Systemcheck beendet"