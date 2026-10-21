#!/bin/bash

#citeste de la tastatura si pune in variabila fraza
read fraza

#verifica daca fraza e gol
if [ -z "$fraza" ]; then
    echo "Nu ati introdus nicio fraza"
else
    echo $fraza
fi
