#!/bin/bash


mkdir -p project/src project/bin

touch project/src/main.sh
chmod 754 project/src/main.sh

touch project/bin/output.log
chmod u=rw,g=r,o=r project/bin/output.log
