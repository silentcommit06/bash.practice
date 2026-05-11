# Backups in Linux - Loesung

Dieser Ordner enthaelt einfache Bash-Skripte fuer das Aufgabenblatt.

## Dateien

- `01_testdaten_vorbereiten.sh` - erstellt Testdaten im Home-Verzeichnis
- `02_tar_backup_erstellen.sh` - erstellt ein komprimiertes `tar.gz` Backup
- `03_tar_restore_testen.sh` - stellt das Backup testweise wieder her
- `04_rsync_backup_erstellen.sh` - erstellt ein Backup mit `rsync`

## Reihenfolge

Fuehre die Skripte in dieser Reihenfolge aus:

```bash
bash 01_testdaten_vorbereiten.sh
bash 02_tar_backup_erstellen.sh
bash 03_tar_restore_testen.sh
bash 04_rsync_backup_erstellen.sh
```

## Antworten auf die Kontrollfragen

### Kontrollfrage 1

Wir ueben zuerst mit Testdaten, damit keine wichtigen echten Dateien geloescht oder veraendert werden.
So kann man Befehle ausprobieren, ohne Risiko fuer persoenliche Daten.

### Kontrollfrage 2

Ein Vorteil von `tar.gz` ist, dass viele Dateien in einer einzigen komprimierten Datei gespeichert werden.
Das ist praktisch zum Speichern oder Uebertragen.
Ein Nachteil ist, dass man das Archiv erst entpacken muss, wenn man einzelne Dateien wiederherstellen moechte.

### Kontrollfrage 3

Man sollte eine Wiederherstellung regelmaessig testen, weil ein Backup nur hilft, wenn man es wirklich zurueckholen kann.
So merkt man frueh, ob das Backup vollstaendig und brauchbar ist.

### Kontrollfrage 4

Beim zweiten `rsync`-Durchlauf werden nur neue oder geaenderte Dateien uebertragen.
Darum ist `rsync` fuer regelmaessige Backups praktisch und schneller als jedes Mal alles neu zu kopieren.

