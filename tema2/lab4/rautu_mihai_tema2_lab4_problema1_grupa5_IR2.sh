#!/bin/bash

acc=$(stat -c '%a' "$1")

while [[ ${#acc} -lt 3 ]]; do
    acc="0$acc"
done

u=${acc:0:1}
g=${acc:1:1}
o=${acc:2:1}

perm=""
lipsau="u+"
lipsag="g+"
lipsao="o+"


#bitwise and ca sa verific permisiunile
if [[ $((u & 4)) -ne 0 ]]; then
    perm+="r"
else
    perm+="-"
    lipsau+="r"
fi
if [[ $((u & 2)) -ne 0 ]]; then
    perm+="w"
else
    perm+="-"
    lipsau+="w"
fi
if [[ $((u & 1)) -ne 0 ]]; then
    perm+="x"
else
    perm+="-"
    lipsau+="x"
fi

if [[ $((g & 4)) -ne 0 ]]; then
    perm+="r"
else
    perm+="-"
    lipsag+="r"
fi
if [[ $((g & 2)) -ne 0 ]]; then
    perm+="w"
else
    perm+="-"
    lipsag+="w"
fi
if [[ $((g & 1)) -ne 0 ]]; then
    perm+="x"
else
    perm+="-"
    lipsag+="x"
fi

if [[ $((o & 4)) -ne 0 ]]; then
    perm+="r"
else
    perm+="-"
    lipsao+="r"
fi
if [[ $((o & 2)) -ne 0 ]]; then
    perm+="w"
else
    perm+="-"
    lipsao+="w"
fi
if [[ $((o & 1)) -ne 0 ]]; then
    perm+="x"
else
    perm+="-"
    lipsao+="x"
fi

#afisez ce are si ce nu are, daca ii lipseste ceva (rwx -> nu apare nimic)
echo "$perm"
[ "$lipsau" = "u+" ] || echo -n "$lipsau "
[ "$lipsag" = "g+" ] || echo -n "$lipsag "
[ "$lipsao" = "o+" ] || echo "$lipsao"
