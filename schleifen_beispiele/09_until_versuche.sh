#!/usr/bin/env bash

# until-Schleife
# Die Variable versuch startet bei 1.
versuch=1

# until wiederholt den Block, bis die Bedingung wahr wird.
until [ $versuch -gt 3 ]
do
    # Der aktuelle Versuch wird ausgegeben.
    echo "Versuch Nummer $versuch"
    # Der Versuchszähler wird erhöht.
    versuch=$((versuch + 1))
done
