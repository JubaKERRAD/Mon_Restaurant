#!/bin/bash

saved_result=0

if [ "$1" == "--analyser-ventes" ]; then
    while read -r line 
    do 
        value1=$(echo $line | cut -d "," -f4 )
        value2=$(echo $line | cut -d "," -f5 )
        result=$(echo "$value1 * $value2" | bc)
        saved_result=$(echo "$saved_result + $result" | bc)

        echo $result

    done < <(tail -n +2 Ventes.csv)
    
    echo "Le chiffre d'affaire est de : $saved_result"
     

    else

        echo "La commande n'existe pas"
