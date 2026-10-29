#!/bin/bash

dir=$1

# il fac daca nu exista
mkdir -p "$dir"

# permisiuni
chmod 755 "$dir"

# creez daca nu exista
touch $dir/f{1..5}

# pt fiecare verific permisiunile (cut taie caracterele de la 2 la 10 (segmentu cu permisiuni din ls -l))
for f in "$dir"/f*; do
    perm=$(ls -l "$f" | cut -c2-10)
    if [ "$perm" != "rw-r--r--" ]; then
        chmod 644 "$f"
    fi
done
