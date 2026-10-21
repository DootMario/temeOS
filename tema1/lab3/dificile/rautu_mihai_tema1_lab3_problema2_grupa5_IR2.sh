#!/bin/bash


#fisier exista si e citibil luam ultimele 10 linii din el
if [ -f "$1" ] && [ -r "$1" ]; then
    tail -n 10 "$1"
elif [ ! -f "$1" ]; then
    echo "Fisier creat" > "$1"
fi
