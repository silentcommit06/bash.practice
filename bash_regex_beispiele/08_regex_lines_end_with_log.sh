#!/bin/bash

# This script finds lines that end with .log.

# Create a small example file with filenames.
printf "system.log\nreadme.txt\nbackup.log\nscript.sh\n" > dateien.txt

# The escaped dot \\. means a real dot, and $ means end of the line.
grep "\\.log$" dateien.txt
