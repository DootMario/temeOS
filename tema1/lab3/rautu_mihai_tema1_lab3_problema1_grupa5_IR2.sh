#!/bin/bash


if [[ $# == 1 ]]; then
    echo $( expr \( $1 \* $1 + $1 + 1 \) / \( $1 + 2 \) - \( 5 \* $1 \) + 4 )
fi
if [[ $# == 2 ]]; then
    echo $( expr $1 \* $1 + $2 \* $2 - $1 + $2 )
fi
if [[ $# == 3 ]]; then
    echo $( expr \( $1 + $2 + $3 \) \*  \( $1 + $2 + $3 \) )
fi
