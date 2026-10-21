#!/bin/bash


# verific daca data exista incercand sa fac cat, verific daca numarul e mai mare decat 10 cu pseudonimum [] pt test si daca da la ambele scriu mesajul
cat data.txt && [ $1 -gt 10 ] && echo "Datale exista si numarul e mai mare ca 10"
