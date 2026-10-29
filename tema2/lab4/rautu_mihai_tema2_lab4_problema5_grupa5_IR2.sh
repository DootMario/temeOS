#!/bin/bash


curent=$(umask)

if [ $curent = "0022" ]; then
    echo "umask este deja 022"
else
    umask 022
    echo "umask a fost setat la 022"
fi
