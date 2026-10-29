#!/bin/bash

alerta=10

# df da spatiul folosit, asa ca verific daca spatiul folosit depaseste maximul spatiului
# folosit, nu minimul spatiului liber
alerta=$((100 - $alerta))

# df / afiseaza doar ce e montat la / (partitia de sistem)
# grep -o afiseaza doar match si folosim regex cu \ ca sintaxa sa nu fie interpretata ca pattern
used=$( df / | grep -o "[0-9]\+%" | tr -d '%' )

if [ $used -gt $alerta ]; then
    echo "Avertisment: putin spatiu de stocare liber!"
else
    echo "Spatiu de stocare suficient."
fi
