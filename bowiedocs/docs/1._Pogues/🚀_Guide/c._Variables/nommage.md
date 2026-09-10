# Nommage des variables

Une convention simple doit être appliquée pour le nommage des variables dans Pogues :

- on utilise des lettres simples en majuscule et des chiffres,
- on sépare les sections du nom par des tirets bas `_`,
- on n'utilise aucun espace.
- on ne finit **pas** par un `_X` avec `X` un chiffre (voir encadré [plus bas](#pourquoi-ne-pas-finir-par-des-_x))

Des exemples de bon usage :

```vtl
AGE

PROFESSION_CONJOINT
```

!!! question "Mais d'où il sort ce nommage ?"
    Pogues utilise un standard bien connu en informatique appelé le `SCREAMING_SNAKE_CASE`, une variante du [Snake case](https://fr.wikipedia.org/wiki/Snake_case).

Par ailleurs, lorsqu'elles sont utilisées dans du code VTL, les noms des variables sont **encadrés par des `$`**. Par exemple, une variable nommée dans Pogues `AGE`, sera mobilisée dans une formule VTL par `$AGE$`.

!!!note "Plus de contraintes en VTL"

    À la convention de nommage décrite plus haut il faut ajouter les contraintes mêmes du langage VTL:
    
    - un nom peut contenir des caractères alphanumériques et des `_` (**mais pas des** `-`),
    - il ne peut débuter avec un caractère spécial,
    - doit contenir au moins un caractère alphabétique,
    - ne peut être un mot réservé à des fonctions qui appartiennent directement au langage VTL.


#### Pourquoi ne pas finir par des `_X`

!!! danger
    Il faut éviter de finir le nom d'une variable vecteur (portée boucle ou tableau dynamique) par `_X` sinon Public Enemy ne fonctionnera pas correctement !

    Voir [Création des unités enquêtées dans la Personnalisation](../Personnalisation/2-guide-perso-echantillon.md) pour plus de détails.
