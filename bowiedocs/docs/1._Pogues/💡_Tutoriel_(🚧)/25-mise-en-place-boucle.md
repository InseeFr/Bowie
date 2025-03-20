# Mise en place d'une boucle

Une boucle permet de répéter une partie du questionnaire (au niveau séquence ou sous-séquence), à partir de valeurs prédéterminées ou de variables du questionnaire.

Dans notre cas d'usage, on souhaite répéter la sous-séquence "Parlez-nous de votre collègue autant de fois que le nombre de collègue qui a été donné à la questions précédente "Combien de personnes partagent votre bureau ?".

On va donc mobiliser la variable `COMBIEN_PARTAGE` dans une boucle.

Pour créer la boucle, on clique sur le bouton "+ Boucle" dans la barre d'actions.

La fenêtre qui s'ouvre propose plusieurs champs que l'on va mobiliser de deux manières différentes :

1. pour une boucle utilisant des valeurs fixes ou des variables du questionnaire
2. pour une boucle s'appuyant sur une structure répétée comme une autre boucle ou un tableau dynamique.

Dans ce tutoriel, on va mettre en place le premier cas uniquement.

!!! warning

    Pour le deuxième type d'utilisation, la section du guide est en cours de création :sweat:

## Création de la boucle

Nous allons remplir les champs suivants :

- _Identifiant_ avec comme toujours un identifiant de la forme `MON_IDENTIFIANT`
- _Minimum_ le nombre minimum d'itérations, qui peut être une valeur fixe (par exemple `2`, ou une variable)
- _Maximum_ le nombre maximum d'itération, là aussi une valeur fixe ou une variable
- _Début_ la séquence ou la sous-séquence à partir de laquelle commence la répétition
- _Fin_ la séquence ou la sous-séquence sur laquelle termine la boucle ; comme pour les filtres, cet élément de fin est inclus dans la boucle.

Dans notre cas, on spécifiera ces valeurs :

- _Identifiant_ `BOUCLE` (oui, on fait simple :smile:)
- _Minimum_ le chiffre `1`
- _Maximum_ l'expression VTL `nvl($COMBIEN_PARTAGE$, 1)`, ce qui permet d'avoir `1` si la question précédente n'a pas été répondue ou la valeur de la réponse si on l'a obtenue
- _Début_ la sous-séquence `COLLEGUE`
- _Fin_ la sous-séquence `COLLEGUE`
