# Transferaufgabe Bash Admin Auswertung

Dieser Ordner enthaelt eine einfache Beginner-Loesung fuer die Transferaufgabe.

## Dateien

- `admin_auswertung.sh` - das Hauptskript
- `system_log.txt` - vorbereitete Logdaten
- `users.txt` - vorbereitete Benutzerliste
- `tickets.txt` - vorbereitete Ticketdaten
- `bericht.txt` - wird durch das Skript erzeugt

## Starten

```bash
bash admin_auswertung.sh
```

## Menue

Das Skript zeigt ein einfaches Menue:

1. Dateien pruefen
2. Logs auswerten
3. Benutzer auswerten
4. Tickets auswerten
5. Bericht erzeugen
6. Programm beenden

## Beginner-Hinweis

Die Loesung ist absichtlich einfach geschrieben:

- einfache Funktionen
- einfache `if else` Pruefung
- eine `for`-Schleife fuer die Dateien
- eine `while`-Schleife fuer das Menue
- `grep` fuer Filter
- `awk` fuer einzelne Felder

