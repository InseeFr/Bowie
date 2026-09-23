# Utilisation d'une indicatrice dans une boucle

Dans ce scénario, on collecte dans __une boucle__ des informations sur l'occupation de résidences secondaires à travers une liste de statuts (propriétaire, locataire, etc.) - la collecte se faisant sur la variable `OCCUPATION`.

On veut précisément savoir s'il y a au moins une réponse de type "locataire" pour afficher après la boucle une question à ce sujet.

Pour cette mise en place, nous allons :

- créer une variable calculée de __portée boucle__ que nous appelons `OCCUPATION_LOCATION`
- créer une variable calculée de __portée questionnaire__ que nous appelons `SOMME_LOCATION`
- créer un filtre qui s'appuie sur cette dernière variable.

La variable `OCCUPATION_LOCATION` est une indicatrice qui s'active si le choix se porte sur le statut "locataire" - dans ce cas la variable `OCCUPATION` prendra la valeur `"2"`. Le code VTL sera donc :

```vtl
if $OCCUPATION$ = "2" then 1 else 0
```

On comprend donc que pour chaque réponse de type "locataire" on va créer une variable de boucle `OCCUPATION_LOCATION` qui vaudra `1`.

La variable `SOMME_LOCATION` va agréger ces résultats avec :

```vtl
sum($OCCUPATION_LOCATION$)
```

Si au moins une réponse de type "locataire" a été faite alors `SOMME_LOCATION` sera strictement positive. Le filtre aura donc comme code VTL :

```vtl
SOMME_LOCATION > 1
```
