#!/bin/bash

# This script shows grep with normal text.

# Create a small example log file.
printf "info: system started\nerror: disk full\nwarn: memory high\n" > logfile.txt

# Search all lines that contain the normal word error.
grep "error" logfile.txt
