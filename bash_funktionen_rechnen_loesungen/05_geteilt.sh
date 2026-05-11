#!/bin/bash

geteilt() {
    echo "$1 / $2 = $(( $1 / $2 ))"
}

geteilt 20 5
geteilt 100 4
