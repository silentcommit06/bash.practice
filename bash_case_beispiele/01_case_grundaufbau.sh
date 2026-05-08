#!/bin/bash

# This variable is checked by the case statement.
variable="muster1"

# case starts the check and compares the value of variable.
case "$variable" in
    # This block runs if variable is muster1.
    muster1)
        # This command runs when muster1 matches.
        echo "muster1 passt"
        ;;
    # This block runs if variable is muster2.
    muster2)
        # This command runs when muster2 matches.
        echo "muster2 passt"
        ;;
    # The star is the default case if nothing matches.
    *)
        # This command runs for every unknown value.
        echo "Nichts passt"
        ;;
# esac ends the case statement.
esac
