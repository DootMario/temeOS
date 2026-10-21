#!/bin/bash

read n


# paranteze duble pt evaluarea expresiilor aritmetice
# verificam daca restul e diferit de 0 ca sa mearga si pt numere negative (-3%2 = -1 diferit de 0)
if (( $n%2!=0 )); then
    echo "Impar"
else
    echo "Par"
fi
