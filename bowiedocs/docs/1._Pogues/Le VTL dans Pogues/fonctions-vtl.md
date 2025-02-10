# Fonctions VTL et usages

## Liste de fonctions
### Les plus utilisés
| Method      | Description                          |
| ----------- | ------------------------------------ |
| [**`nvl`**](fonctions-vtl.md/#nvl)       | Permet de gérer la nullité    |
| [**`cast`**](fonctions-vtl.md/#cast)       | Permet de changer le tye de la donnée    |

## Détail des fonctions
##### nvl
!!! question "Utilité"
    Lorsque l’on manipule des variables en VTL, on veut dans la plupart des cas se prémunir de valeurs nulles. Par exemple, **un champ qui n’est pas encore rempli par le répondant est de valeur nulle** (`null`). <br>
    Il est donc nécessaire de gérer cette possible nullité. On utilise pour cela la fonction `nvl`

!!! abstract "Syntaxe"
    ```
    nvl(<var>, <valeur par défaut>)
    ```

    - `var` : variable sur laquelle on teste la nullité
    - `valeur par défaut` : valeur retournée dans le cas ou `var` vaut `null` 

=== "Texte"

    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `"mon texte"` | `nvl($MA_VARIABLE$, "valeur par défaut")` | `"mon texte"` |
    | `null` | `nvl($MA_VARIABLE$, "valeur par défaut")` | `"valeur par défaut"` |
    | `null` | `nvl($MA_VARIABLE$, "")` | `""` |
    | `""` | `nvl($MA_VARIABLE$, "")` | `""` |
    | `""` | `nvl($MA_VARIABLE$, "autre valeur par défaut")` | `""` |


=== "Nombre"

    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `18`      | `nvl($MA_VARIABLE$, 25)`   | `18` |
    | `null`      | `nvl($MA_VARIABLE$, 25)`   | `25` |
    | `null`      | `nvl($MA_VARIABLE$, 0)`   | `0` |
    | `0`      | `nvl($MA_VARIABLE$, 0)`   | `0` |
    | `0`      | `nvl($MA_VARIABLE$, 12)`   | `0` |

??? example "Exemple d'utilisation"
    === "Champ texte vide"
        Tester si un champ texte, `PRENOM` est vide ou non. _Voir [la note des réponses de type texte](../Le%20guide/13-reponse-simple‧md/#type-de-reponse-texte)_
        ```
        nvl($PRENOM$, "") = ""
        ```

    === "Comparaison de nombre"
        Comparer si une variable de type nombre est supérieure à une valeur.
        
        > Ici je veux me prémunir du fait que ma variable pourrait ne pas être renseignée. Si l'enquêté décide de ne pas saisir de valeur pour une question donnée dont la réponse est un nombre, exemple un chiffre d'affaire `CA`, on pourrait considérer que le `CA` équivaut à `0` afin de rester cohérent dans les traitements suivants. <br>
        
        Exemple, on veut un filtre pour afficher une question uniquement dans le cas où `CA` serait supérieur à `24 000`. on écrirait alors dans la condition d'affichage du filtre,
        
        === "Condition sans `nvl` :x:"
            ```
            $CA$ > 24 000
            ```
            Si l'enquêté ne répond rien à `CA`, alors la filtre va être évalué avec `null > 24 000` ce qui renvoie une erreur et donc on affiche la question dans tous les cas (voir [comportement filtre](../../6._🫂_Support/index.md/#affichage-à-tort-de-questions-filtrées) pour plus de détails). Or on aurait aimé que si l'enquêté ne réponde rien ce soit comme si il avait un `CA` de `0`.
        === "Condition implicite :white_check_mark:"
            ```
            nvl($CA$, 0) >  24 000
            ```
            Si l'enquêté ne répond rien à `CA`, alors la filtre va être évalué avec `0 > 24 000` ce qui renvoie `false` et la condition d'affichage n'étant pas remplie, alors la question concernée sera filtrée.
        === "Condition avec `=true` :white_check_mark:"
            ```
            (nvl($CA$, 0) >  24 000) = true
            ```
            Si l'enquêté ne répond rien à `CA`, alors la filtre va être évalué avec `0 > 24 000` ce qui renvoie `false` et la condition d'affichage n'étant pas remplie, alors la question concernée sera filtrée.

##### cast
!!! question "Utilité"
    En VTL, Le typage **définit la nature des valeurs que peuvent prendre les données que nous manipulons**. <br>
    Il est parfois nécessaire de passer d’un type de variable à un autre, on parle dans ce cas de transtypage.
    

!!! abstract "Syntaxe"
    ```
    cast(<var>, <type cible> [, <motif>])
    ```

    - `var` : variable sur laquelle on applique le transtypage
    - `type cible` : type dans lequel on veut formater la variable
    - `motif` (optionnel) :  selon les type de cast on a besoin d'un information supplémentaire. 
    Ex: pour les date on vaut le format cible. "YYYY" ; "YYYY-MM-DD" ; 

=== "Texte"
    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `18`      | `cast($MA_VARIABLE$, string)`   | `"18"` |
    | `"18"`      | `cast($MA_VARIABLE$, string)`   | `"18"` |
    | `1995-01-02`      | `cast($MA_VARIABLE$, string, "YYYY-MM-DD")`   | `"1995-01-02"` |
    | `1995`      | `cast($MA_VARIABLE$, string, "YYYY")`   | `"1995"` |
=== "Nombre"
    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `"25"`      | `cast($MA_VARIABLE$, integer)`   | `25` |
    | `25`      | `cast($MA_VARIABLE$, integer)`   | `25` |
=== "Booléen"
    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `0`      | `cast($MA_VARIABLE$, boolean)`   | `false` |
    | `1`      | `cast($MA_VARIABLE$, boolean)`   | `true` |
    | `"true"`      | `cast($MA_VARIABLE$, boolean)`   | `true` |
    | `true`      | `cast($MA_VARIABLE$, boolean)`   | `true` |
=== "Date"
    | Données | Fonction | Résultat |
    | --- | ---| --- |
    | `"1995-01-02"`      | `cast($MA_VARIABLE$, date, "YYYY-MM-DD")`   | `1995-01-02` |
    | `"1995"`      | `cast($MA_VARIABLE$, date, "YYYY")`   | `1995` |

??? example "Exemple d'utilisation"
    Par exemple on veut afficher dans un libellé l'âge d'une personne. Un libellé de question ne peut interpréter que
    
    - **des textes en dur** : tout texte positionné entre des doubles quotes `"mon texte"`, 
    - **une variable de type texte** : variable définie avec un "Type de réponse" égale à `Texte`
    > Voir [personnalisation de libellé](../Quelques%20cas%20pratiques/personnaliser-libelles‧md) pour plus de détails et d'exemples

    **Or** un âge est souvent enregistré dans une variable de type `Nombre`
    > afin de pouvoir faire des comparaisons, ex savoir si la personne est majeur ou non, `$AGE$ < 18`.

    === "VTL :x:"
        Si on essaye d'injecter directement la variable `AGE` dans le libellé,
        ```
        "Âge de l'individu : " || $AGE$ || " ans."
        ```
        le VTL n'est pas bien interprété et la formule est affichée tel quel dans la visualisation.
        ![alt text](../../img/pogues/vtl_wrong_cast.png)
    === "VTL :white_check_mark:"
        Il faut donc **changer le type** de la variable `AGE` en un type texte. En VTL cela correspond au type `string`
        ```
        "Individu ayant " || cast($AGE$,string) || " ans."
        ```
        Et le libellé s'affiche maintenant correctement

        ![alt text](../../img/pogues/vtl_correct_cast.png)