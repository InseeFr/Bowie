# Personnalisation d'un libellé

Vous l'avez remarqué, le champ qui permet la création d'un libellé de question n'est pas un champ texte ordinaire. Il s'agit en effet d'un éditeur de code VTL !

Cela signifie que l'on peut utiliser le langage VTL pour personnaliser le libellé, le rendre dynamique.

On propose ici de créer une variable calculée permettant d'afficher le prénom du répondant s'il a été renseigné et de proposer un présentation plus générique si ce n'est pas le cas (pour rappel, le contrôle posé sur la remplissage du prénom n'est pas bloquant !).

## Création de la variable calculée `PERSOLIB`

Comme précédemment, au sein d'une question, dans l'onglet _Variables calculées_, on crée la variable `PERSOLIB` dont la valeur est :

- la variable PRENOM si elle est renseignée
- le texte "Cher répondant, " si ce n'est pas le cas.

??? example "Solution"

    `if nvl($PRENOM$, "") = "" then "Cher répondant, " else $PRENOM$ || " ,"`

## Personnalisation du libellé de la question `APPRECIATION`

On peut retourner sur la question dont l'identifiant est `APPRECIATION`, pour modifier son libellé de manière à commencer par le texte produit par la variable `PERSOLIB`.

??? example "Solution"

    `"" || $PERSOLIB$ || " avez-vous apprécié l'exercice ?"`
