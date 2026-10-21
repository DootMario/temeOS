#!/bin/bash

cat "/etc/hosts" "/etc/issue" | grep '-' | tr '-' '#' > "results.txt"
