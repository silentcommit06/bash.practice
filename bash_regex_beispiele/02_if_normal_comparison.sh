#!/bin/bash

# This script shows a normal if comparison without regex.

# Store the text ja in the variable eingabe.
eingabe="ja"

# Check if the variable is exactly equal to ja.
if [ "$eingabe" = "ja" ]; then
    # Print this if the text is exactly ja.
    echo "Bestätigt"
# Run this block if the comparison is false.
else
    # Print this if the text is not ja.
    echo "Nicht bestätigt"
# End the if statement.
fi
