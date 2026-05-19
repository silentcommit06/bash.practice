# Uebungsblatt YAML Transferaufgaben - Antworten

## Aufgabe 1

1. Der Kurs heisst `IT-Support Grundlagen`.
2. Der Kurs dauert `6` Wochen.
3. Ja, der Kurs ist online, weil `online: true` gesetzt ist.
4. Die drei Themen sind `Windows Grundlagen`, `Linux Grundlagen` und `Netzwerke`.
5. Zum Bereich `dozent` gehoeren `name` und `verfuegbar_bis`.
6. `17:00` steht in Anfuehrungszeichen, damit YAML es sicher als Text liest.

## Aufgabe 2

- `name: Webserver` ist Text, weil Webserver ein Wort ist.
- `port: 8080` ist eine Zahl.
- `aktiv: false` ist ein Boolean-Wert.
- `version: "3.8"` ist Text, weil es in Anfuehrungszeichen steht.
- `tools:` ist eine Liste, weil darunter Werte mit `-` stehen.
- `speicher_gb: 4` ist eine Zahl.

## Aufgabe 3

Fehler in der falschen YAML-Datei:

- Einrueckungen sind nicht gleich.
- `aktiv:true` hat kein Leerzeichen nach dem Doppelpunkt.
- `beschreibung Das ist ein Testserver` hat keinen Doppelpunkt.
- Listeneintraege bei `ports` sind falsch eingerueckt.
- Unterpunkte gehoeren nicht sauber zum Bereich `server`.

Die korrigierte YAML steht in `11_uebungsblatt_transferaufgaben_loesung.yaml`.

## Aufgabe 6

1. Der oberste Bereich ist `services`.
2. Der Dienst heisst `web`.
3. Das Image ist `nginx`.
4. Es wird `8080:80` verbunden.
5. `restart: always` bedeutet vermutlich, dass der Container automatisch neu gestartet wird.
6. `"8080:80"` steht in Anfuehrungszeichen, damit der Port-Wert sicher als Text gelesen wird.

## Reflexion

1. Einrueckungen sind wichtig, weil YAML damit erkennt, welche Werte zusammengehoeren.
2. Ein Schluessel-Wert-Paar speichert einen einzelnen Wert. Eine Liste speichert mehrere Werte.
3. YAML eignet sich gut fuer Konfigurationsdateien, weil es gut lesbar und klar strukturiert ist.

