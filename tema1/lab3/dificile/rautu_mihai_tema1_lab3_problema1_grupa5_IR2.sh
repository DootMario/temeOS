#!/bin/bash

grep "bash" /etc/passwd > bash_users.txt

#pipuieste din bash_users in wc ca output ul sa nu aiba numele fisierului
wc -l < bash_users.txt
