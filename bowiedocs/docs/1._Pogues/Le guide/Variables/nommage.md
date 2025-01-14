# Nommage des variables

Une convention simple doit être appliquée pour le nommage des variables dans Pogues :

- on utilise des lettres simples en majuscule et des chiffres,
- on sépare les sections du nom par des tirets bas `_`,
- on n'utilise aucun espace.

Des exemples de bon usage :

```vtl
AGE

PROFESSION_CONJOINT

ACTIVITES_1
```

Par ailleurs, lorsqu'elles sont utilisées dans du code VTL, les noms des variables sont encadrés par des `$`. Par exemple, une variable nommée dans Pogues `AGE`, sera mobilisée en VTL par `$AGE$`.

!!!note "Plus de contraintes en VTL"

    À la convention de nommage décrite plus haut il faut ajouter les contraintes mêmes du langage VTL:
    
    - un nom peut contenir des caractères alphanumériques et des `_` (**mais pas des** `-`),
    - il ne peut débuter avec un caractère spécial,
    - doit contenir au moins un caractère alphabétique,
    - ne peut être un mot réservé de VTL.

!!! danger
    Eviter de finir le nom d'une variable externe par une valeur numérique.
    Une variable externe peut contenir un vecteur (par exemple : liste d'habitant issue de la base de sondages ou de la précédente enquête) et sera personnalisée en collecte avec un suffixe séquentiel.
    Par exemple : pour un vecteur de produits appelé PRODUITS, dans le fichier de personnalisation on pourra avoir PRODUITS_01, PRODUITS_02, etc
