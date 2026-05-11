#!/bin/bash

minus() {
    echo "$1 - $2 = $(( $1 - $2 ))"
}

minus 10 4
minus 50 15
