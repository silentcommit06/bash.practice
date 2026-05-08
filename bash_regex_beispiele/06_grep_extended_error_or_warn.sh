#!/bin/bash

# This script shows grep with extended regex.

# Create a small example log file.
printf "info: ok\nerror: failed login\nwarn: disk space low\n" > logfile.txt

# Use -E so grep can use error|warn as an OR pattern.
grep -E "error|warn" logfile.txt
