# Guide VTL Pogues

Ce document guide l’utilisateur de Pogues dans son usage du langage VTL.

## VTL

[VTL](https://sdmx.org/?page_id=5096) (Validation and Transformation Language) est un langage de programmation né dans le giron du standard de description de données aggrégées SDMX. Ce langage est adopté ou en cours d’adoption par les mêmes utilisateurs que SDMX, essentiellement des banques centrales et des instituts nationaux de statistiques.

Bien que conçu initialement pour le traitement de données aggrégées (eg des tableaux ou cubes de données), le langage est suffisamment souple pour qu’on puisse l’utiliser pour exprimer des contrôles, comme dans le cas des contrôles mis en oeuvre dans le cadre d’un questionnement.

On a donc choisi ce langage comme expression des contrôles et du dynamisme dans les questionnaires conçus dans Pogues dont la cible est les nouveaux outils de collecte développés dans le cadre du programme Metallica.

Les éléments les plus importants à retenir de l’usage de VTL dans Pogues :

- l’écriture se fait via un éditeur de code VTL,
- les références aux variables doivent être encadrées par des `$`
- il est dans le plus souvent nécessaire de gérer le cas où la variable n’est pas encore ou plus renseignée - sa valeur est nulle : `nvl($MA_VARIABLE$, "valeur si nulle")`,
- VTL fournit un certain nombre de fonctions utilitaires - comme `cast`et`nvl` - on répertorie les plus utiles dans ce document.

## Utiliser VTL

VTL est utilisé dès que l’on souhaite :

- créer un libellé personnalisé
- définir un contrôle
- créer une variable calculée
- définir la condition d’un filtre

Les champs correspondants dans Pogues proposent dans la plupart des cas un **éditeur VTL** :

![Editeur VTL](/Bowie/img/vtl/code-list-editor.png 'Éditeur VTL')

## Fonctionnalités de l’éditeur

L’éditeur fournit :

- un soulignement syntaxique
- une autocomplétion des fonctions et variables
- une gestion des erreurs de syntaxe

## Bases de la syntaxe

Une chaîne de caractères s’écrit en encadrant du texte par deux double quote ("), par exemple :

```
"Voici un texte."
```

Un entier s’écrira simplement :

```
42
```

Un chiffre avec décimales :

```
3.14159
```

## Libellés

Voici un exemple de syntaxe pour un libellé personnalisé :

![Libellé personnalisé](/Bowie/img/vtl/vtl-in-pogues-custom-label.png 'Libellé personnalisé')

On utilise ici l’opérateur VTL `||` qui permet de concaténer des chaînes de caractères, ou une chaîne de caractères et une variable (ici `NOM`).

!!! warning "Attention!"

    Pour des raisons d’implémentation historique, il est encore nécessaire d’encadrer les noms de variables par `$`. Ainsi, **on pourra rechercher la variable** `NOM` **en la tapant telle quelle dans l’éditeur**, puis on ajoutera `$` en préfixe et suffixe, pour obtenir `$NOM$`.

!!! tip

    Dans l’exemple précédent, on ne gère pas le cas où la variable n’a pas été remplie. Pour anticiper ce cas, on peut utiliser la fonction VTL `nvl`, le libellé personnalisé devient ainsi :
    
    ![Fonction nvl](/Bowie/img/vtl/vtl-in-pogues-custom-label-nvl.png 'Fonction nvl')_Libellé personnalisé avec gestion de la nullité_

    Plus d’infos sur l’usage de `nvl` plus bas.

On pourra mobiliser dans un libellé personnalisé des variables collectées, calculées ou externes.

### Création d'un lien

Pour créer un lien hypertexte, on s'appuie sur la syntaxe Markdown :

```vtl
"Voici un [lien](http://monlien.fr)."
```

### Infobulles

La syntaxe pour la création d’un infobulle est la suivante :

```vtl
Mon libellé de question avec [une infobulle](. "dont voici le contenu").
```

!!! warning "Attention!"

    Il faut bien respecter la syntaxe pour le contenu de l’infobulle : un `.` avant le texte entouré de guillemets `"`.

## Contrôles

Un exemple de contrôle sur une valeur numérique :

![Exemple de contrôle](/Bowie/img/vtl/vtl-in-pogues-simple-control.png 'Exemple de contrôle')_Libellé personnalisé avec gestion de la nullité_

## Variables calculées

Pogues permet de créer des variables calculées à partir de variables collectées. Par exemple, pour sommer les revenus de l’enquêté et de son conjoint on écrira :

![Variable calculée pour le revenu](/Bowie/img/vtl/vtl-in-pogues-computed-variable-earnings.png)

L'expression VTL étant :

```
nvl($REVENUS$, 0) + nvl($REVENUS_CONJOINT$, 0)
```

## Filtres

Voici un exemple de filtre simple exprimé en VTL :

![Filtre simple](/Bowie/img/vtl/vtl-in-pogues-simple-filter.png 'Filtre simple')_Un filtre simple_

<span class="label label-rounded label-primary">À noter</span> À ce jour, le champ “Condition d’affichage” du filtre n’utilise pas l’éditeur VTL.

Toutes formes d’expression booléenne est valide :

```
# Possible
$MA_VARIABLE_CHAINE$ = "a value"

# Ou
$MA_VARIABLE_NUMERIQUE$ = 42

# Plus direct
$MA_VARIABLE_BOOLEENNE$
```

Un exemple plus complexe combinant plusieurs variables avec des “et” (`and`) et des “ou” (`or`) :

```
nvl($VARIABLE_EXCLUSIVE$, false) and
(nvl($AUTRE_VARIABLE_1$, false) or nvl($AUTRE_VARIABLE_2$, false) or nvl($AUTRE_VARIABLE_3$, false))
```

## Gestion de la nullité

Lorsque l’on manipule des variables en VTL, on veut dans la plupart des cas se prémunir de valeurs nulles. Par exemple, un champ qui n’est pas encore rempli par le répondant est de valeur nulle.

Il est donc nécessaire de gérer cette possible nullité, on utilise pour cela la fonction `nvl` dont la syntaxe est la suivante :

```
nvl($VAR$, "") // ← si la variable est nulle, on lui affecte une chaîne vide, sinon c'est sa valeur qui est renvoyée
```

## Types des variables

> TODO

### Transtypage

Il est parfois nécessaire de passer d’un type de variable à un autre, on parle dans ce cas de transtypage.

Par exemple, si l’on veut extraire l’année de la date du jour, on va dans un premier temps transformer cette date en chaîne :

```
cast(current_date(),string,"YYYY-MM-DD")
```

C’est la fonction cast qui opère ce transtypage, sa syntaxe est :

```
cast(<variable>, <type cible> [, <motif>])
```

Comme vu plus haut, on utilisera fréquemment `cast` pour correctement typer une variable numérique dans Pogues mais récupérée comme une chaîne dans les outils de collecte.

## Fonctions et opérateurs

L’usage de VTL dans Pogues et les outils de collecte s’appuie sur les bibliothèques Lunatic (pour les composants graphiques) et Trevas (qui fournit le moteur VTL).

C’est l’état d’avancement de cette dernière qui permet de connaître les opérateurs et fonctions disponibles : la référence est donc la [page de suivi de l’implémentation](https://inseefr.github.io/Trevas-JS/fr/coverage.html).

### Logique

| Nom | Symbole | Exemple        |
| --- | ------- | -------------- |
| Ou  | or      | true or false  |
| Et  | and     | true and false |

### Chaînes de caractères

#### Remplacer

| Nom          | Symbole | Exemple                            |
| ------------ | ------- | ---------------------------------- |
| Remplacement | replace | `replace("bag", "g", "c") # → bac` |

### Appartenance

Les opérateurs `in` et `not_in` permettent de tester l'appartenance d'une valeur à un ensemble. Par exemple :

```python
"a" in {"a", "b", "c"} # → true
```

Il permet aussi de faire ce test en utilisant des variables :

```python
$PRENOM$ not_in $PRENOMS_FAMILLE$
# ou
$PRENOM$ not_in {"Alice", "Bob", "Charlie"}
```

## Cookbook

### Chaînes de caractères

#### Gestion des majuscules

Imaginons que l'on collecte un prénom à travers la bien nommée variable `PRENOM`. On souhaite que quelque soit la casse de la réponse, on affiche le prénom sous la forme `Prénom`.

Voici une formule pour le cas d'un prénom simple:

```
upper(substr(PRENOM, 1, 1)) || lower(substr(PRENOM, 2, length(PRENOM)))
```

Attention, cela ne fonctionnera pas pour les prénoms composés pour lesquels il sera nécessaire de rendre compte d'un séparateur (un espace, un tiret).

### Dates

#### Récupérer l'année

On a créé une question dont la réponse est au format Date dans Pogues, la variable collectée `DATE_NAISSANCE`.

Voici comment obtenir l’année :

```
substr(cast($DATE_NAISSANCE$, string, "YYYY-MM-DD"), 1, 4)
```

On transforme la variable de type date en chaîne de caractères, puis on extrait les 4 premiers caractères. Le motif "YYYY-MM-DD" permet de la traduction

<span class="label label-rounded label-warning">Attention !</span> Si Pogues permet de choisir trois types de formats de date, seul le format JJMMAAAA (jour, mois, année) est aujourd’hui proposé à l’enquêté. Par ailleurs, si le format présenté lui-même est JJMMAAAA, la variable collectée est au format AAAAMMJJ, ce qui explique le code VTL précédent.

#### Formater l'affichage de la date

Comme vu plus haut, le format des variables Date n'est pas forcément idéal pour l'affichage, on veut pouvoir présenter l'information avec le motif `JJ/MM/AAAA` (jour, mois, année).

Le code suivant permet cette transformation :

```
substr(cast($DATE$, string, "YYYY-MM-DD"), 9, 2) ||
"/" ||
substr(cast($DATE$, string, "YYYY-MM-DD"), 6, 2) ||
"/" ||
substr(cast($DATE$, string, "YYYY-MM-DD"), 1, 4)
```

#### Comparaison

Pour comparer des dates :

```
cast($ARRIVEE$, date, "YYYY-MM-DD") > cast($DEPART$, date, "YYYY-MM-DD")
```

Renvoie `true` si la date d'arrivée est postérieure à la date de départ.

#### Calcul de durée

Pour calculer une durée à partir de variables collectées de type Date :

```
cast($ARRIVEE$, date, "YYYY-MM-DD") - cast($DEPART$, date, "YYYY-MM-DD")
```

Qui fournira le résultat en millisecondes. Pour avoir l'équivalent en jour on pourra écrire :

```
(cast($ARRIVEE$, date, "YYYY-MM-DD") - cast($DEPART$, date, "YYYY-MM-DD")) / 86400000
```

Pour plus de clarté, le calcul de la durée brute pourra être déportée dans une variable calculée, nommée par exemple `DUREE`, l'obtention du nombre de jours se fera alors à travers la formule :

```
$DUREE$ / 86400000
```

### Durée

#### Contrôler un dépassement de borne

Une variable de type Durée aura une des formes suivantes :

- pour une mesure en "années/mois" : `PnaYnmM` où `na` sera le nombre d'années et `nm` le nombre de mois (par exemple : `P3Y10M` pour "trois ans et dix mois")
- pour une mesure en "heures/mois" : `PTnhHnmM` avec `nh` le nombre d'heures et `nm` le nombre de minutes (`PT12H30M` pour "douze heures et trente minutes").

Un contrôle typique est de s'assurer qu'on ne dépasse pas une borne max par exemple. Dans ce cas-là, on modifiera la valeur jusqu'à obtenir une valeur numérique, comme dans l'exemple ci-dessous :

```
// valeur initiale de DUREE : PT12H30M
cast(
    replace(
        replace(
            replace($DUREE$, "PT", ""), // "12H30M"
        "M", ""),                       // "12H30"
    "H", "."),                          // "12.30"
number)                                 // 12.30
> 7.3                                   // true
```

### Liste à choix multiples

#### Compter le nombre de choix

On souhaite calculer le nombre de cases cochées dans une liste à choix multiples. Les variables considérées sont nommmées dans notre cas `QCM1` à `QCM4`. Le code sera alors :

```
(if (nvl($QCM1$, false) = true) then 1 else 0) +
(if (nvl($QCM2$, false) = true) then 1 else 0) +
(if (nvl($QCM3$, false) = true) then 1 else 0) +
(if (nvl($QCM4$, false) = true) then 1 else 0)
```

<span class="label label-rounded label-primary">À noter</span> Cette solution est fastidieuse et difficile à mettre en place pour des longues listes. Des fonctionnalités non-encore disponibles dans VTL permettront à terme une expression plus directe de ce calcul.

### Boucles

#### Premiet et dernier éléments

Imaginons une boucle permettant de collecter des prénoms (à travers la variable `$PRENOM$`). Les fonctions `first_value` et `last_value` permettent de récupérer respectivement le premier élément de la variable vectorielle `$PRENOM$` en écrivant :

```
first_value($PRENOM$ over())
```

ou

```
last_value($PRENOM$ over())
```

...par exemple à travers une variable calculée.

### Contrôles

#### Non-réponse

Dans la plupart des cas, vérifier une potentielle non-réponse c'est vérifier que la variable sous-jacente n'a pas été valorisée. Il faut donc écrire un contrôle pour tester la _nullité_ de la variable :

```
isnull($VAR_A$)
```

Selon les questions, on peut vouloir aller plus loin, par exemple pour une réponse textuelle s'assurer que l'on n'a pas aussi une chaîne vide :

```
isnull($VAR_A$) or $VAR_A$ = ""
```

Et dans ce cas, on peut encore plus simplement tirer partie de la fonction `nvl` :

```
nvl($VAR_A$, "") = ""
```

#### Contrôle de validité d'une adresse mail

Certains questionnaires peuvent collecter des informations de contact. Dans le cas d'une adresse _mail_, on veut pouvoir s'assurer de la justesse syntaxique de celle-ci. S'il n'existe pas de formule assurant la compatibilité à 100% avec la spécification initiale relative aux adresses mail, ce que l'on utilise dans la formule suivante permet d'empêcher la plupart des erreurs :

```
match_characters(
    $MAIL$,
    "^[A-Za-z0-9._+\-\']+@[A-Za-z0-9.\-]+\.[A-Za-z]{2,}$"
) = false
```

#### Contrôle de validité d'un SIRET

On se place dans le cas où le Siret est collecté à travers la variable `SIRET`. Le contrôle est alors :

```
mod(
cast(substr($SIRET$, 1, 1), integer) +
(
    if cast(substr($SIRET$, 2, 1), integer) > 4 
    then cast(substr($SIRET$, 2, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 2, 1), integer) * 2
) +
cast(substr($SIRET$, 3, 1), integer) +
(
    if cast(substr($SIRET$, 4, 1), integer) > 4 
    then cast(substr($SIRET$, 4, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 4, 1), integer) * 2
) +
cast(substr($SIRET$, 5, 1), integer) +
(
    if cast(substr($SIRET$, 6, 1), integer) > 4 
    then cast(substr($SIRET$, 6, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 6, 1), integer) * 2
) +
cast(substr($SIRET$, 7, 1), integer) +
(
    if cast(substr($SIRET$, 8, 1), integer) > 4 
    then cast(substr($SIRET$, 8, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 8, 1), integer) * 2
) +
cast(substr($SIRET$, 9, 1), integer)
, 10) = 0
and
mod(
(
    if cast(substr($SIRET$, 1, 1), integer) > 4 
    then cast(substr($SIRET$, 1, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 1, 1), integer) * 2
) + 
cast(substr($SIRET$, 2, 1), integer) +
(
    if cast(substr($SIRET$, 3, 1), integer) > 4 
    then cast(substr($SIRET$, 3, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 3, 1), integer) * 2
) + 
cast(substr($SIRET$, 4, 1), integer) +
(
    if cast(substr($SIRET$, 5, 1), integer) > 4 
    then cast(substr($SIRET$, 5, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 5, 1), integer) * 2
) + 
cast(substr($SIRET$, 6, 1), integer) +
(
    if cast(substr($SIRET$, 7, 1), integer) > 4 
    then cast(substr($SIRET$, 7, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 7, 1), integer) * 2
) + 
cast(substr($SIRET$, 8, 1), integer) +
(
    if cast(substr($SIRET$, 9, 1), integer) > 4 
    then cast(substr($SIRET$, 9, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 9, 1), integer) * 2
) + 
cast(substr($SIRET$, 10, 1), integer) +
(
    if cast(substr($SIRET$, 11, 1), integer) > 4 
    then cast(substr($SIRET$, 11, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 11, 1), integer) * 2
) + 
cast(substr($SIRET$, 12, 1), integer) +
(
    if cast(substr($SIRET$, 13, 1), integer) > 4 
    then cast(substr($SIRET$, 13, 1), integer) * 2 - 9 
    else cast(substr($SIRET$, 13, 1), integer) * 2
) + 
cast(substr($SIRET$, 14, 1), integer)
, 10) <> 0
```

La première partie du contrôle s'assure que les 9 premiers chiffres forment un SIREN valide, la seconde que le SIRET est valide.
