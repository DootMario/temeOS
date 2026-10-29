#!/bin/bash

og=$(umask)
echo "Umask vechi: $og"

mkdir -p mydir
touch mydir/myfile.txt

echo $( ls -l mydir/myfile.txt | cut -c2-10 )
echo $( ls -ld mydir | cut -c2-10 )

umask 077

touch mydir/altfisier.txt
echo $( ls -l mydir/altfisier.txt | cut -c2-10 )


# Umask vechi: 0021
# rw-r--rw-
# rwxr-xrw-
# rw-------
# umask ramas de la un exercitiu anterior

# altfisier.txt are doar permisiuni de citire scriere de la proprietar unde myfile.txt are si citire pt grup si citire scriere pt altii
# umask nu adauga permisiuni, ci le sterge din implicit (777 pt directoare si 666 pt fisiere)
# deci myfile cu 021 devine de la 666->646 iar directorul de la 777 -> 756
# iar altfisier cu 077 devine din 666->600
# operatia mai exact e: implicit & !umask
# adica pt fiecare bit facem & intre ce e implicit si complementarul umask ului curent
# 666 cu 021 = 110_110_110 & !(000_010_001) -> 110_110_110 & 111_101_100 -> 110_100_110 -> 646
