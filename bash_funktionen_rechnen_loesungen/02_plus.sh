#!/bin/bash

plus() {
    echo "$1 + $2 = $(( $1 + $2 ))"
}

plus 5 3
plus 10 20

read -p "Bitte erste Zahl eingeben: " zahl1
read -p "Bitte zweite Zahl eingeben: " zahl2

plus "$zahl1" "$zahl2"
