#!/bin/bash

# This script checks a username with a regex.

# Ask the user to enter a username.
read -p "Enter username: " user

# Use [[ ... =~ ... ]] to compare the username with a regex.
if [[ "$user" =~ ^[a-zA-Z][a-zA-Z0-9_]*$ ]]; then
    # Print this if the username starts with a letter and contains only allowed characters.
    echo "Gültiger Benutzername"
# Run this block if the regex does not match.
else
    # Print this if the username is not valid.
    echo "Ungültiger Benutzername"
# End the if statement.
fi
