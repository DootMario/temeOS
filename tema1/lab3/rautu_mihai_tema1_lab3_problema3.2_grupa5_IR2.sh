#!/bin/bash

touch disk_usage.txt

df -h | tee disk_usage.txt

touch tmpfs_usage.txt

grep "tmpfs" disk_usage.txt > tmpfs_usage.txt

[ "$( wc -l tmpfs_usage.txt )" = "0 tmpfs_usage.txt" ] && echo "Nu exista date despre tmpfs" || echo "Date despre tmpfs disponibile"

free -h | grep "swap" >> tmpfs_usage.txt

[ -s errors.txt ] && echo "Erori detectate" || echo "Executie completa fara erori"
