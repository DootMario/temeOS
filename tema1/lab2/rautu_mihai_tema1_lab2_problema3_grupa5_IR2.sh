#!/bin/bash

mkdir -p documents

cd documents

touch file{1..3}.txt

ls

#wc numara newline, words sau bytes (-w pt cuvinte)
ls | wc -w

#sau wc -l ca prin pipe ls e implicit acelasi ca ls -1(pune intrarile pe linie noua) si nu ai probleme cu fisiere cu whitespace in nume
#
#SAU folosesti find ca sa numeri DOAR fisiere ie. find maxdepth 1 -type f | wc -l chiar daca au whitespace in nume (cauta in director curent pana la o adancime de 1 (doar in el) -type specifica ce cauti, c character d directory f file)
