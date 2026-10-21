#!/bin/bash


#/dev/fd este un director in care se creaza fisiere pentru file descriptori (tee stie lucra decat cu fisiere)
grep ":" "/etc/passwd" | grep -i "run" | tr "a-zA-Z" "A-Za-z" | tr ':' '@' | tee /dev/fd/2 /tmp/filtered_data.txt
