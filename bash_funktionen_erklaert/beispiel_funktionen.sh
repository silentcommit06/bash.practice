#!/bin/bash

# This function prints a simple welcome message.
begruessung() {
    echo "Hallo und willkommen!"
}

# This function greets the name that is passed as the first parameter.
begruessung_mit_name() {
    echo "Hallo $1!"
}

# This function adds two numbers and prints the result.
addiere() {
    ergebnis=$(( $1 + $2 ))
    echo "Das Ergebnis ist: $ergebnis"
}

# This function uses a local variable.
zeige_name() {
    local name="Mia"
    echo "In der Funktion: $name"
}

# This function checks if a number is greater than 0.
pruefe_zahl() {
    if [ "$1" -gt 0 ]; then
        return 0
    else
        return 1
    fi
}

# Call the first function.
begruessung

# Call the function with one parameter.
begruessung_mit_name "Leon"

# Call the function with two parameters.
addiere 5 3

# Show that local keeps the outside variable safe.
name="Ali"
zeige_name
echo "Ausserhalb der Funktion: $name"

# Use the return code of the function in an if statement.
if pruefe_zahl 5; then
    echo "Die Zahl ist groesser als 0."
else
    echo "Die Zahl ist nicht groesser als 0."
fi
