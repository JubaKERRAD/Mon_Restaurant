#!/bin/bash
# Pour ajouter une nouvelle vente dans ventes.csv
if [ "$1" == "--ajouter-vente" ]; then 
    echo "$2, $3, $4, $5, $6, $7" >> Ventes.csv
    echo "Une nouvelle vente a été ajoutée avec succès !"
else 

  echo "La vente n'a pas pu être ajoutée.. "
fi  
