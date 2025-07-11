# Les tableaux dynamiques (Maj ✨)

On peut vouloir créer des tableaux dont on ne connaît pas à l'avance le nombre de lignes. Ces tableaux se présenteront : 

- sans en-tête de lignes en première colonne
- avec un bouton `Ajouter une ligne` (sous le tableau)
- et un bouton `Supprimer une ligne` (la dernière).

!!! info "Cas nombre de lignes max identique à min"
    Dans ce cas, les boutons `Ajouter une ligne` et `Supprimer une ligne` n'apparaissent pas lors de la visualisation.


Pour ce faire, on créera une question de type Tableau avec les paramètres suivant :

!!! abstract "Description"
    === "Défaut"

        ![alt text](../../../img/pogues/dyn-tab-desc1.png)
        
        - l'Axe d'information principal : 
            - [`1`] Format de l'axe principal* : Choisir `Dynamique`
            - [`2`] [Mode de calcul du nombre de lignes*](#mode-de-calcul-du-nombre-de-lignes)
            - [`3`] Nombre de lignes max identique à min*
            - [`4`] Nombre de lignes*
        - [`5`] [Information mesurée](#informations-mesurees)  
        
    === "Nombre de lignes Min <> Max "
        
        ![alt text](../../../img/pogues/dyn-tab-desc2.png)

        - l'Axe d'information principal : 
            - [`1`] Format de l'axe principal* : Choisir `Dynamique`
            - [`2`] [Mode de calcul du nombre de lignes*](#mode-de-calcul-du-nombre-de-lignes)
            - [`3`] Nombre de lignes max identique à min*
            - [`4.a`] Nombre de lignes min.*
            - [`4.b`] Nombre de lignes max.*
        - [`5`] [Information mesurée](#informations-mesurees)  
        


## Mode de calcul du nombre de lignes 

On a le choix entre deux type de calcul pour le nombre de lignes : 

- `Nombre` : déterminé par un nombre entier -> Le champ n'accepte que des nombres
- `Formule` : déterminé par une formule VTL -> Le champ est un éditeur VTL

### Nombre de lignes déterminés par `Nombre`

??? example "Exemple de tableau dynamique avec un Nombre entier déterminant le nombre de lignes"
    
    === "Défaut"
        - Si on indique `2` pour le champ `Nombre de lignes`, on obtient un tableau qui ressemble à ça
            ![alt text](../../../img/pogues/dyn-tab-nb-line-nb1.png)
    === "Min <> Max"
        - Si on indique `1` pour le champ `Nombre de lignes min` et `2` pour le champ `Nombre de lignes max`, on obtient un tableau qui ressemble à ça
            ![alt text](../../../img/pogues/dyn-tab-nb-line-nb2.png)
        - et on peut ajouter une ligne pour atteindre le max
            ![alt text](../../../img/pogues/dyn-tab-nb-line-nb3.png)

!!! tip ""
    Ici la première colonne est une variable non collectée avec la formule VTL ```"Individu " || cast(GLOBAL_ITERATION_INDEX,string) || ""```

### Nombre de lignes déterminés par `Formule`


??? danger "VTL non valide"
    Si le résultat du VTL n'est pas interprété avec le type 'Nombre', ex `Formule = "Du texte"`, on a l'erreur suivante
    ![formule different d'un nombre](../../../img/pogues/tab-dim-formule-vtl-diff-nb.png)

??? example "Exemple de tableau dynamique avec formule VTL"
    - Si on a un questionnaire avec une question `NB_PERSONNE` de type _Nombre_
    ![input nb personnes](../../../img/pogues/input-5-pers.png)
    - On peut alors créer ensuite un tableau dynamique avec pour formule de nombre de lignes `$NB_PERSONNE$`.
    Dans le cas où l'utilisateur réponds 5 à la question `NB_PERSONNE`, alors le tableau aura exactement 5 lignes    
    ![tableau dynamique](../../../img/pogues/tab-dyn-5-pers.png)


### Information(s) mesurée(s)
- Renseigner une information de type `Réponse simple` ou `Réponse à choix unique`

- ✨ On peut aussi [filtrer certaines cases](#filtrer-des-cases) ou rendre c'est dernière en mode [lecture seule](#cases-en-lecture-seule).

- Pogues permet de préremplir certaines **colonnes** des tableaux dynamiques, que ce soit par de la donnée externe ou par des variables calculées. Ces **colonnes** ne sont alors pas modifiables en collecte. Voir [Spécifier des données non-collectées](./3-cases-non-collectees.md)

## Calculer des totaux de lignes ou de colonnes

Ces totaux peuvent être ensuite utilisées dans des libellés, des filtres ou des contrôles

- cf. [Total en ligne](./3-cases-non-collectees.md/#total-en-ligne)
- cf. [Total en colonne](./3-cases-non-collectees.md/#total-en-colonne)

## Contrôles

Dans l'onglet Contrôles, décrire classiquement le contrôle en VTL mais préciser son niveau : 

- si le contrôle concerne les informations relatives à l'ensemble des lignes du tableau (ex la somme des valeurs d'une colonne), préciser `Niveau* : Tableau` (par défaut)
- si le contrôle doit être interprété ligne par ligne, préciser `Niveau* : Ligne`
 

![Contrôles par ligne](../../../img/pogues/controle-tab-dynamique.png)


## ✨ Filtrer des cases

!!! abstract "Objectif"
    Il est possible de filtrer des cases dans un tableau dynamique selon une formule VTL.

=== "Ajouter une `Condition d'affichage` sur une colonne du tableau"
    ![alt text](../../../img/pogues/dyn-tab-filter-cell-add.png)
=== "Éditer la formule VTL"
    ![alt text](../../../img/pogues/dyn-tab-filter-cell-edit.png)

La même logique que pour filtrer une question est appliquée : on propose un éditeur VTL conditionnant l'affichage de la case avec les règles suivantes :

| Validité de la Formule VTL | Condition d'affichage | Résultat |
| ----------------- | --------------------- | --------- |
| Pas de formule | / | la case est affichée, l'enquêté peut la renseigner |
| ❌ | `ERROR` | la case est affichée, l'enquêté peut la renseigner  |
| ✅ | `TRUE`  | la case est affichée, l'enquêté peut la renseigner  |
| ✅ | `FALSE` | la case n'est pas affichée, l'enquêté ne peut pas la renseigner  |

Le choix "Non" est sélectionné par défaut : aucune case de la colonne n'est filtrée = toutes les cases sont affichées.

??? example "Exemple"
    Imaginons le tableau suivant avec l'identifiant `PRODUIT`
    ![alt text](../../../img/pogues/dyn-tab-filter-cell-ex-1.png)
    
    !!! abstract "Variables générées du tableau."
        1. La première variable est non collectée. On y injecte une variable externe.
        2. `PRODUIT2` est un booléen : case à cocher qui vaut `true` ou `false`.
        3. `PRODUIT3` est le `CA` que l'on veut collecter.
    Pour une liste de produits, on veut savoir quels sont les produits pour lesquels une entreprise à un CA de plus de 10 000€, et avoir la valeur précise de ce CA **uniquement dans ce cas**. <br>
    On veut donc éviter que l'enquêté puisse saisir une valeur dans la colonne `Précision du CA` si son CA est inférieur à 10 000€ pour un produit. Pour ce faire on va rajouter une `Condition d'affichage` sur cette colonne pour afficher ou non les case selon la formule VTL $PRODUIT2$.
    ![alt text](../../../img/pogues/dyn-tab-filter-cell-ex-2.png)
    !!! tip "En VTL, `$PRODUIT2$` est équivalent à `$PRODUIT2$ = true`"
    Si `PRODUIT2` vaut `true`, l'enquêté a coché la case, alors on affiche le champ pour collecter la variable $PRODUIT3$ (colonne "Précision du CA")

    Ce qui donne le tableau suivant
    === "0 case coché"
        ![alt text](../../../img/pogues/dyn-tab-filter-cell-ex-3.png)
    === "1 case coché"
        ![alt text](../../../img/pogues/dyn-tab-filter-cell-ex-4.png)
    === "3 case cochés avec 1 case remplie"
        ![alt text](../../../img/pogues/dyn-tab-filter-cell-ex-5.png)

## ✨ Cases en lecture seule
!!! abstract "Objectif"
    Le concepteur peut spécifier des règles qui mettent en lecture seule certaines cases d'un tableau dynamique. Cette fonctionnalité est utile par exemple lorsqu'on pré-remplit les données d'un tableau et qu'on ne souhaite pas laisser la possibilité à l'enquêté de modifier les valeurs.

!!! danger "Limitations"
    Les types `Date` et `Durée` ne sont pour l'instant pas supportés

=== "Ajouter une `Condition de lecture seule` sur une colonne du tableau"
    ![alt text](../../../img/pogues/dyn-tab-read-only-add.png)
=== "Éditer la formule VTL"
    ![alt text](../../../img/pogues/dyn-tab-read-only-edit.png)

On propose un éditeur VTL conditionnant la possibilité de mettre en lecture seule (de ne pas pouvoir éditer) la case avec les règles suivantes :

| Validité de la Formule VTL | Condition de lecture seule | Résultat |
| ----------------- | --------------------- | --------- |
| Pas de formule | / | la case est accessible en modification pour l'enquêté |
| ❌ | `ERROR` | la case est en lecture seule, l'enquêté ne peut pas l'éditer  |
| ✅ | `TRUE`  | la case est en lecture seule, l'enquêté ne peut pas l'éditer  |
| ✅ | `FALSE` | la case est accessible en modification pour l'enquêté  |

Le choix "Non" est sélectionné par défaut : aucune case de la colonne n'est en lecture seule = toutes les cases de la colonne sont modifiables.