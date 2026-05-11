# Funktionen in Bash einfach erklaert

Dieses Erklaerblatt zeigt, wie man Funktionen in Bash benutzt.
Eine Funktion ist ein eigener Codeblock mit einem Namen.
Man schreibt den Code einmal und kann ihn danach mehrmals aufrufen.

## 1. Was ist eine Funktion?

Eine Funktion ist wie eine kleine Aufgabe im Skript.
Sie bekommt einen Namen und fuehrt Befehle aus, wenn man sie aufruft.

Beispiel:

```bash
begruessung() {
    echo "Hallo und willkommen!"
}

begruessung
```

Wichtig: Die Funktion startet nicht automatisch.  
Sie muss nach der Definition mit ihrem Namen aufgerufen werden.

## 2. Warum benutzt man Funktionen?

Funktionen helfen dabei, Skripte besser zu strukturieren.

Vorteile:

- weniger Wiederholung im Code
- bessere Uebersicht
- Code kann einfacher geaendert werden
- gleiche Aufgabe kann mehrfach benutzt werden
- grosse Skripte werden in kleine Teile aufgeteilt

## 3. Grundaufbau

So sieht eine Funktion in Bash aus:

```bash
funktionsname() {
    befehl1
    befehl2
}
```

Erklaerung:

- `funktionsname` ist der Name der Funktion
- `()` gehoert zur Funktionsdefinition
- `{ ... }` enthaelt die Befehle
- der Funktionsname ohne Klammern ruft die Funktion auf

## 4. Funktionen mit Parametern

Man kann einer Funktion Werte mitgeben.
Diese Werte heissen Parameter oder Argumente.

```bash
begruessung() {
    echo "Hallo $1!"
}

begruessung "Mia"
```

Wichtige Parameter:

- `$1` ist der erste Wert
- `$2` ist der zweite Wert
- `$3` ist der dritte Wert
- `$#` ist die Anzahl aller Werte
- `"$@"` bedeutet alle Werte einzeln

## 5. Mehrere Parameter

Eine Funktion kann mehrere Werte bekommen.

```bash
addiere() {
    ergebnis=$(( $1 + $2 ))
    echo "Das Ergebnis ist: $ergebnis"
}

addiere 5 3
```

Hier ist `$1` die Zahl 5 und `$2` die Zahl 3.

## 6. Lokale Variablen

Mit `local` gilt eine Variable nur innerhalb der Funktion.
Das ist wichtig, damit andere Variablen im Skript nicht aus Versehen geaendert werden.

```bash
zeige_name() {
    local name="Mia"
    echo "In der Funktion: $name"
}

name="Leon"
zeige_name
echo "Ausserhalb der Funktion: $name"
```

Die Variable `name` ausserhalb bleibt `Leon`.

## 7. echo und return

In Bash haben `echo` und `return` verschiedene Aufgaben.

`echo` gibt Text oder ein Ergebnis aus:

```bash
quadrat() {
    echo $(( $1 * $1 ))
}

ergebnis=$(quadrat 4)
echo "Das Quadrat ist: $ergebnis"
```

`return` gibt einen Statuscode zurueck:

- `return 0` bedeutet erfolgreich
- `return 1` bedeutet Fehler oder nicht erfolgreich

Beispiel:

```bash
pruefe_zahl() {
    if [ "$1" -gt 0 ]; then
        return 0
    else
        return 1
    fi
}
```

## 8. Funktionen mit if/else

Funktionen koennen Pruefungen enthalten.
Das macht das Hauptskript uebersichtlicher.

```bash
ist_datei_vorhanden() {
    if [ -f "$1" ]; then
        return 0
    else
        return 1
    fi
}

if ist_datei_vorhanden "bericht.txt"; then
    echo "Die Datei ist vorhanden."
else
    echo "Die Datei wurde nicht gefunden."
fi
```

## 9. Funktionen in einem Menue

Bei Menues sind Funktionen sehr praktisch.
Jede Menueoption kann eine eigene Funktion aufrufen.

```bash
zeige_datum() {
    date
}

zeige_benutzer() {
    whoami
}
```

So bleibt das Menue einfacher lesbar.

## 10. Typische Fehler

Haefige Fehler:

- Funktion wird definiert, aber nie aufgerufen
- beim Aufruf werden falsch Klammern geschrieben: `begruessung()`
- richtig ist beim Aufruf nur: `begruessung`
- `return` wird fuer Text benutzt, obwohl `echo` richtig waere
- Parameter werden nicht in Anfuehrungszeichen gesetzt

## Merksatz

Eine Funktion ist ein wiederverwendbarer Codeblock.
Sie macht Bash-Skripte sauberer, kuerzer und besser lesbar.

