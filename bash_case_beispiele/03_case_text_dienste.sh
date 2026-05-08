#!/bin/bash

# Ask the user for a service name and save it in dienst.
read -p "Gib einen Dienst ein: " dienst

# Check the value of dienst.
case "$dienst" in
    # This block runs if the user enters apache.
    apache)
        # Print the Apache message.
        echo "Du hast Apache ausgewählt."
        ;;
    # This block runs if the user enters nginx.
    nginx)
        # Print the Nginx message.
        echo "Du hast Nginx ausgewählt."
        ;;
    # This block runs if the user enters mysql.
    mysql)
        # Print the MySQL message.
        echo "Du hast MySQL ausgewählt."
        ;;
    # This block runs if the service name is unknown.
    *)
        # Print an error message for unknown services.
        echo "Diesen Dienst kenne ich nicht."
        ;;
# End of the case statement.
esac
