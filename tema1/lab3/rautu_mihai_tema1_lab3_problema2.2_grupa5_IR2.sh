#!/bin/bash

a=$(./rautu_mihai_tema1_lab3_problema1_grupa5_IR2.sh 2)
b=$(./rautu_mihai_tema1_lab3_problema1_grupa5_IR2.sh -1 1)
c=$(./rautu_mihai_tema1_lab3_problema1_grupa5_IR2.sh 3)
d=$(./rautu_mihai_tema1_lab3_problema1_grupa5_IR2.sh 1 2)

test "$a" -lt "$b" && echo "mai mic" || (test "$a" -gt "$b" && echo "mai mare" || echo "egal")

test "$c" -lt "$d" && echo "mai mic" || (test "$c" -gt "$d" && echo "mai mare" || echo "egal")
