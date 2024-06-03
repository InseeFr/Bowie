# Les variables globales

Les variables globales sont des variables fournies directement par le moteur de contrôle des questionnaires.

!!! warning

    Leur statut particulier implique un usage particulier : il ne faut pas les appeler en les encadrant par des `$`. On écrira donc par exemple `GLOBAL_ITERATION_INDEX` et pas `$GLOBAL_ITERATION_INDEX$`. 
    De plus, en mai 2024, il est nécessaire de faire suivre la variable d'une chaine de caractères éventuellement vides pour qu'elle se valorise

## Index de la position dans une boucle

==:test_tube: Fonctionnalité en cours de finalisation==

Pour connaître l'index de la position dans une boucle, il est possible de mobiliser la variable `GLOBAL_ITERATION_INDEX`. Celle-ci vaudra `1` pour la première position, puis `2`, `3`, etc.

## Syntaxe (mai 2024)

`
"Prénom de l'individu " || cast(GLOBAL_ITERATION_INDEX,string) || ""
`
