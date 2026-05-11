#!/bin/bash

cd ~

mkdir -p backups

tar -czvf backups/backup_uebung.tar.gz backup_uebung

ls -lh backups

tar -tzvf backups/backup_uebung.tar.gz
