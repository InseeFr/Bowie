# Portée des variables

!!! danger "Important"
    La portée d'une variable est une notion importante à comprendre pour les questionnaires utilisant des **boucles** ou des **tableaux dynamiques**"

## Notion de vecteur

Dans Pogues, la majorité des variables sont collectées sous forme de **scalaire**(1). Cela change quand on collecte une variable définie au sein d'une boucle ou dans un tableau dynamique. On va alors parler de **"variable de boucle"**.  
Elle est interprétée dans le questionnaire comme un **vecteur**(2), de la même dimension que la boucle.
{ .annotate }

1.  Une **variable scalaire** est un conteneur qui ne peut stocker qu'**une seule information** à la fois, comme un nombre unique ou un mot.  
Par opposition aux tableaux ou aux objets qui sont des collections d'éléments, la variable scalaire représente l'unité de donnée la plus simple.
2.  Un **vecteur** est une structure de données qui permet de stocker une **liste d'éléments de même type** les uns après les autres. C'est une sorte de tableau flexible : contrairement à un tableau classique dont la taille est figée, le vecteur peut s'agrandir automatiquement quand on y ajoute de nouvelles informations.

!!! abstract "Glossaire"
    - **variable de boucle :** variable collectée définie dans une séquence ou sous-séquence faisant partie d'une boucle.  
    Pour savoir comment est définie une boucle dans Pogues, se référer à la [page dédiée](../a._Questionnaire/24-boucles.md)
    - **variable de tableau dynamique :** variable collectée définie en tant que colonne d'un tableau dynamique.  
    Pour savoir comment est définie un tableau dynamique dans Pogues, se référer à la [page dédiée](../b._Questions/Tableaux/2-tableau-dynamique.md)
    !!! note "Note"
        Pour ne pas se répéter, on va parler dans cette page essentiellement de variables de boucle, mais les mêmes principes s'appliquent aux variables de tableau dynamique


!!! example "Exemple"
    Pour une boucle de taille 2 avec à l'intérieur une question `PRENOM` de type texte, pour laquelle l'enquêté saisie "Titi" pour la première occurrence, puis "Tata" pour la deuxième, la variable `PRENOM` est alors collectée comme un vecteur de taille 2 et les valeurs `["Titi", "Tata"]`

## Notion de portée

!!! warning "Point de vigilance"
    Cette variable sera **interprétée différement** dans une formule VTL selon la **portée** dans laquelle on exécute la formule.

    Il en existe deux types : **`Questionnaire`** et **`Boucle`**.  

### Exécution de formules VTL selon la portée
<div class="annotate" markdown>

- **Portée `Questionnaire` :** Les variables hors boucle d'un questionnaire sont des scalaires(1) et peuvent être utilisées directement dans les formules VTL. Les variables de boucle sont des vecteurs(2). Ces derniers ne sont pas exploitables tel quel dans une formule VTL. Il faut passer par des [fonctions d'agrégations](../../VTL/1-fonctions-vtl.md#agregation). Des exemples se trouvent [ici](../../VTL/1-fonctions-vtl.md#__tabbed_22_1).
- **Portée `Boucle` :** Les variables de boucle sont interprétées `n` fois(3) comme un scalaire, en utilisant chacune de ses valeur, successivement et dans l'ordre.
</div>

1.  Une valeur unique au niveau du questionnaire
2.  Plusieurs valeur au niveau du questionnaire
3.  Dimension ou nombre d'occurence de la boucle

???+ example "Exemple"
    Imaginons une **variable boucle** `PRENOM` pour laquelle on a saisie les valeurs `"Titi"` et `"Tata"`.
    On souhaite pour la question suivante demander l'âge et dans son libellé afficher la valeure de `PRENOM`. Si la question suivante est bien définie dans la même boucle ou une boucle liée, alors on pourra le faire via la formule VTL `"Quel âge a " || $PRENOM$ || " ?"`.  
    Cela donnera pour chacune des occurences les libellés 

    - Quel âge a Titi ?
    - Quel âge a Tata ?
    !!! info ""
        La question se situant dans un boucle, la formule VTL est bien interprétée avec une portée **boucle**
    !!! danger "Mauvaise portée"
        Si on essaye d'utiliser la variable `$PRENOM$` en dehors d'une boucle(1), ex avec le libellé `"Êtes-vous bien " || $PRENOM$ || " ?"`, alors on aura une erreur VTL car `$PRENOM$` sera interprétée comme un **vecteur** du fait qu'on se trouve dans une portée **questionnaire**. C'est comme si on voulait afficher   
        Êtes-vous bien ["Titi", "Tata"] ?
        { .annotate }

        1.  c'est à dire dans une question qui n'est pas située dans une séqence ou sous séquence, elle même encadrée par une boucle
    !!! tip "Passer d'une vecteur à un scalaire"
        Il est possible d’effectuer des opérations d’agrégation sur les valeurs qui composent un vecteur ([`sum()`](../../VTL/1-fonctions-vtl.md#__tabbed_21_4), [`count()`](../../VTL/1-fonctions-vtl.md#__tabbed_21_1), ect). Le résulat issue de l'agrégation sera alors utilisable dans une **portée Questionnaire**

### Champ *Niveau de calcul*
!!! question "Utilité"
    On définit une portée pour les variables calculées ou externes via par le paramètre **_Niveau de calcul_** : il s'agit de préciser si on prévoit que notre variable soit interprétée 
    
    - avec une portée **boucle** -> on sélectionne la boucle `BOUCLE_XXX` dans laquelle on va injecter la variable
    - avec une portée **questionnaire** -> on sélection `Questionnaire`

### Variable calculée de portée boucle

!!! question "Utilité"
    Créer un vecteur à partir d'une variable de boucle.

!!! example "Exemple"
    === "Indicatrice sur l'âge"
        Imaginons une boucle `B1` sur un ensemble de questions relatives à des individus. Je veux pouvoir pour chacun d'eux créer une indicatrice permettant de savoir si l'individu est dans le champs en vérifiant son âge (variable collectée `AGE`) et sa nationalité (`NATIONALITE`).

        Pour cela, je crée une variable calculée de portée `B1` dont la formule s'appuie pour chaque occurrence de la boucle (chaque individu) sur les variables `AGE` et `NATIONALITE` (de chaque individu).

        ![Variable avec portée boucle](../../../img/pogues/guide-boucle-portee.png)

        On veut contrôler si un individu est majeur ou non pour savoir quelles questions lui poser. On va créer une variable calculée `EST_MAJEUR` de portée `B1` portant sur chaque valeur de `AGE` et vérifiant si `$AGE$ >= 18`

        ![alt text](../../../img/pogues/check_Is_adult.png)

        Si on imagine 5 individu aves les âges suivants : 5 ; 40 ; 24 ; 35 ; 12

        Alors on aura les valeurs suivantes pour les variables,

        - `AGE` = `[5,40,24,35,12]`
        - `EST_MAJEUR` = `[false,true,true,true,false]`

        Si on fait ensuite une boucle liée `B2` sur une suite de 3 questions et que cette boucle est basée sur `B1`, lorsque l'on place le filtre avec la formule VTL suivante, `$EST_MAJEUR$` (ce qui équivaut à `$EST_MAJEUR$=true`), alors dans notre cas, on ne posera ses questions que pour le 2eme, 3eme et 4eme individu.
    === "Exemple simple"
        Imaginons une **variable boucle** `$CA_ENTREPRISE$` pour laquelle on a saisie les valeurs `18 000` et `25 000`
        On définie alors la var calculée `CALC_VAR` ayant pour formule VTL `$CA_ENTREPRISE$ + 100`. On aura donc pour `CA_VAR` en sortie un vecteur auquel on aura ajouté `100` à chaque valeur de `$CA_ENTREPRISE$` : `[18 100, 25 100]`


### Variable externe de portée boucle

!!! question "Utilité"
    Pouvoir injecter un vecteur en tant que variable externe


