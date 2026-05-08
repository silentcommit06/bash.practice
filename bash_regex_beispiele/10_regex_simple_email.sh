#!/bin/bash

# This script checks a simple email structure with regex.

# Ask the user to enter an email address.
read -p "Enter email: " email

# Check for text before @, text after @, a dot, and text after the dot.
if [[ "$email" =~ ^[^@]+@[^@]+\.[^@]+$ ]]; then
    # Print this if the email has a simple valid structure.
    echo "Simple email structure detected"
# Run this block if the regex does not match.
else
    # Print this if the email structure is not valid.
    echo "Email structure not valid"
# End the if statement.
fi
