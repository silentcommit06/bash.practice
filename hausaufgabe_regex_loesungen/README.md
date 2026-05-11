# Hausaufgabe Regex Loesungen

Dieses Blatt verlangt nur Regular Expressions, keine vollstaendigen Bash-Befehle.

## Loesungen

Fall 1: Zeilen beginnen mit `Fehler`

```regex
^Fehler
```

Fall 2: Dateinamen enden mit `.log`

```regex
\.log$
```

Fall 3: Telefonnummer im Format `01234-567890`

```regex
^[0-9]{5}-[0-9]{6}$
```

Fall 4: E-Mail endet mit `@firma.de`

```regex
^[A-Za-z0-9._]+@firma\.de$
```

Fall 5: Genau `admin`, `support` oder `user`

```regex
^(admin|support|user)$
```

Fall 6: Datum im Format `YYYY-MM-DD`

```regex
^[0-9]{4}-[0-9]{2}-[0-9]{2}$
```

## Hinweis

Wenn du diese Regex mit `grep` testen willst, brauchst du bei einigen Ausdruecken `grep -E`, weil `{}` und `|` erweiterte Regex-Zeichen sind.
