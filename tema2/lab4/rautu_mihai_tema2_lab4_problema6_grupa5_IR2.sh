#!/bin/bash


option=0

if [ ! -f $1 ] && [ ! -d $1 ]; then
    echo "Not a valid file or directory!"
    $option=4
fi

while [[ $option != 4 ]]; do
    # -e ma lasa sa formatez cu \escape
    echo -e "1 Verificarea permisiunilor actuale\n2 Setarea permisiunilor la rwxr-xr-x.\n3 Setarea permisiunilor la rw-r-r-.\n4 Iesire\n"
    read -r -p "Optiune: " option
    case $option in
        1)
            ls -ld $1 | cut -c2-10
            ;;
        2)
            chmod 755 $1
            echo "Setat la rwxr-xr-x."
            ;;
        3)
            chmod 644 $1
            echo "Setat la rw-r--r--."
            ;;
        4)
            echo "ceau!"
            ;;
        *)
            echo "Optiune invalida!"
            ;;
    esac

done
