#!/bin/bash

# This script shows grep with a regex.

# Create a small example log file.
printf "2026 service started\nerror without number\n7 warnings found\n" > logfile.txt

# Search all lines that start with a number.
grep "^[0-9]" logfile.txt
