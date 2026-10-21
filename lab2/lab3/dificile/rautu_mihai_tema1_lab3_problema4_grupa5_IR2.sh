#!/bin/bash

#oneline
[ -w /tmp ] && echo "Permisiuni ok" > /tmp/testfile.txt || echo "Nu ai permisiuni de scriere in /tmp"

#separat
[ -w /tmp] && echo "Permisiuni ok" > /tmp/testfile.txt
[ ! -w /tmp ] && echo "Nu ai permisiuni de scriere in /tmp"
