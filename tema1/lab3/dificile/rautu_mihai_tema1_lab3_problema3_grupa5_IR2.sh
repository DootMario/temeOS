#!/bin/bash

# du sh aplicat pe * care se extinde in tot ce e in /var/log apoi bagat in sort -h (dupa 'human readable numbers')
du -sh /var/log/* | sort -h > sorted_files.txt
