#!/usr/bin/env bash

# Aufgabe 7: Fehler finden

# Erstellt das Array korrekt mit drei Tools.
tools=(git docker kubectl)

# Gibt das erste Element korrekt aus.
# Fehler im Arbeitsblatt: echo $tools[0] liest nicht sauber das Array-Element.
echo "${tools[0]}"

# Durchläuft alle Elemente korrekt mit "${tools[@]}".
# Fehler im Arbeitsblatt: for tool in $tools[@] nutzt nicht alle Elemente zuverlässig.
for tool in "${tools[@]}"
do
    # Gibt jedes Tool aus.
    echo "Tool: $tool"
done

# Erklärung: Array-Elemente werden mit ${array[index]} ausgelesen.
# Erklärung: Alle Array-Elemente werden mit "${array[@]}" sicher durchlaufen.
# Erklärung: Die Anführungszeichen schützen Werte mit Leerzeichen.
