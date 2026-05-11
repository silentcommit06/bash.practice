#!/bin/bash

cd ~

mkdir -p restore_tar

tar -xzvf backups/backup_uebung.tar.gz -C restore_tar

ls -R restore_tar

cat restore_tar/backup_uebung/datei1.txt
