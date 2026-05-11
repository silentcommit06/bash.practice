#!/bin/bash

cd ~

mkdir -p backup_uebung/dokumente

echo "Meine erste Datei" > backup_uebung/datei1.txt
echo "Meine zweite Datei" > backup_uebung/datei2.txt
echo "Meine dritte Datei" > backup_uebung/datei3.txt

echo "Dokument im Unterordner" > backup_uebung/dokumente/info.txt

ls -R backup_uebung
