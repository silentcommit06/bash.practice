#!/bin/bash

cd ~

mkdir -p backups/rsync_home_backup

rsync -av backup_uebung/ backups/rsync_home_backup/

ls -R backups/rsync_home_backup

echo "Neue Änderung" >> backup_uebung/datei1.txt

rsync -av backup_uebung/ backups/rsync_home_backup/

cat backups/rsync_home_backup/datei1.txt
