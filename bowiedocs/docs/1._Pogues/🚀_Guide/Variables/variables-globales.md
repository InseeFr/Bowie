# Les variables globales

!!! question "Définition"
    Les variables globales sont des variables fournies directement par le moteur de contrôle des questionnaires.

!!! warning

    Leur statut particulier implique un usage particulier : il ne faut pas les appeler en les encadrant par des `$`. On écrira donc par exemple `GLOBAL_ITERATION_INDEX` et pas `$GLOBAL_ITERATION_INDEX$`. 
    De plus, en mai 2024, il est nécessaire de faire suivre la variable d'une chaine de caractères éventuellement vides pour qu'elle se valorise

## Index de la position dans une boucle

Pour connaître l'index de la position dans une boucle, il est possible de mobiliser la variable `GLOBAL_ITERATION_INDEX`. Celle-ci vaudra `1` pour la première position, puis `2`, `3`, etc.

### Syntaxe

Dans la première boucle, on pourra par exemple afficher :
```
"Prénom de l'individu " || cast(GLOBAL_ITERATION_INDEX,string) || ""
```
Dans les boucles liées (cf. Les Boucles) on pourra également utiliser cette variable, qui sera l'index dans la première boucle.
On ne peut en revanche pas les utiliser hors boucle.

!!! warning "Il faut toujours mettre un texte après le cast, `|| ""` !!"
    L'exemple ci dessous ne fonctionne pas par exemple
    ```
    "Prénom de l'individu " || cast(GLOBAL_ITERATION_INDEX,string)
    ```

## Variables globales issues des liens deux à deux

La variable collectées sous-jacente à une question de type lien deux à deux est une matrice qu'il est difficile de mobiliser dans le questionnaire avec le langage VTL. Aussi, on vous fournit des variables système sous forme de vecteur, facile à manipuler dans le questionnaire.

Il y a 4 jeux de variables : 

- GLOBAL_PARENT1_PRENOM et GLOBAL_PARENT1_SEXE : un vecteur avec le prénom (resp. sexe) du premier parent déclaré pour chaque personne de la boucle prénom 
- GLOBAL_PARENT2_PRENOM et GLOBAL_PARENT2_SEXE : un vecteur avec le prénom (resp. sexe) du deuxième parent déclaré pour chaque personne de la boucle prénom  
- GLOBAL_CONJOINT : un vecteur avec le prénom du (premier) conjoint déclaré pour chaque personne de la boucle prénom 
- GLOBAL_ENFANTS_PRENOMS : un vecteur avec la liste des prénoms des enfants pour chaque personne de la boucle prénom, s'il y a au moins 2 enfants les prénoms sont séparés par des `#`

Prenons un exemple avec une famille de 5 personnes : 

![Famille pour les liens](../../img/pogues/famille-liens.png)

C'est Laura qui répond au questionnaire, elle déclare d'abord son conjoint, puis les enfants et termine par le grand-père.
Le vecteur prénom associé est 
![Vecteur prénom liens](../../img/pogues/vecteur-prenom-liens.png)

to be continued


