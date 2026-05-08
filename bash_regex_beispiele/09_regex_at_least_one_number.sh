#!/bin/bash

# This script finds lines with at least one number.

# Create a small example file.
printf "user\nuser123\nbackup\nserver9\n" > namen.txt

# Use -E because + is an extended regex symbol.
grep -E "[0-9]+" namen.txt
