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

La variable collectées sous-jacente à une question de type [lien deux à deux](../Questions/16-liens-2a2.md) est une matrice qu'il est difficile de mobiliser dans le questionnaire avec le langage VTL. Aussi, on vous fournit des variables système sous forme de vecteur, facile à manipuler dans le questionnaire.

### Présentation des variables

Il y a 4 jeux de variables : 

- GLOBAL_PARENT1_PRENOM et GLOBAL_PARENT1_SEXE : un vecteur avec le prénom (resp. sexe) du premier parent déclaré pour chaque personne de la boucle prénom 
- GLOBAL_PARENT2_PRENOM et GLOBAL_PARENT2_SEXE : un vecteur avec le prénom (resp. sexe) du deuxième parent déclaré pour chaque personne de la boucle prénom  
- GLOBAL_CONJOINT : un vecteur avec le prénom du (premier) conjoint déclaré pour chaque personne de la boucle prénom 
- GLOBAL_ENFANTS_PRENOMS : un vecteur avec la liste des prénoms des enfants pour chaque personne de la boucle prénom, s'il y a au moins 2 enfants les prénoms sont séparés par des `#`

### Exemple

Reprenons l'exemple de la famille de Laura :

![Famille pour les liens](../../../img/pogues/famille-liens.png)

Les variables globales issues des liens deux à deux sont disponibles et correctement calculées dès que la question sur les liens est renseignée dans le questionnaire. **Elles sont utilisables directement dans le questionnaire Pogues au sein d'une boucle basée sur le prénom** sans calculer de variable intermédiaire.

Pour l'exemple, nous allons créer des variables calculées qui permettent de voir ce qu'il y a dedans.
Par exemple on va créer PARENT1_PRENOM = nvl(GLOBAL_PARENT1_PRENOM,"") qui correspond à la variable brute avec gestion du null (resp. PARENT2_PRENOM). Les variables sont de niveau de calcul la boucle dans laquelle on collecte la variable source du prénom.

Il est possible de faire la même chose avec le sexe des parents afin de personnaliser le questionnaire en utilisant les termes mère/père au lieu de parent.

![Variable magique prénoms des parents](../../../img/pogues/global-parent-prenom.png)

Pour savoir si un individu de la boucle a déclaré au moins un parent dans le logement, il suffit de tester la nullité de GLOBAL_PARENT1_PRENOM dans une boucle.

De la même manière on peut obtenir les prénoms du conojoint pour chaque individu de la boucle en utilisant GLOBAL_CONJOINT_PRENOM (un seul conjoint possible, le premier déclaré) tel que CONJOINT_PRENOM = nvl(GLOBAL_CONJOINT_PRENOM,"")

![Variable magique prénom du conjoint](../../../img/pogues/global-conjoint.png)

On peut également fournir la listes des enfants pour chaque personne du logement. Dans la variable GLOBAL_ENFANTS_PRENOMS, on récupère la liste des prénoms des enfants, chaque prénom étant séparé par le caractère spécial `#`. On n'a pas souhaité utliser les caractères usuels tels que la virgule ou le point-virgule pour ne pas créer de confusion lors des exports csv. 

Pour avoir une liste de prénoms utilisable dans une déclaration, on mobilise la fonction VTL `replace` pour substituer le `#` par un caractère de notre choix. 

![Création liste des enfants sans dièse](../../../img/pogues/VTL-replace.png)

Voici un aperçu des variables donnant la liste des enfants :

![liste des enfants](../../../img/pogues/liste-enfants.png)




