# Suggester : philosophie et nomenclatures

Les nomenclatures doivent contenir au moins les attributs/colonnes `id` et `label`.

On effectue la recherche sur les libellés et/ou les identifiants suivant le paramétrage qui a été choisi pour chacune de ces nomenclatures.

Le paramétrage peut concerner les éléments suivants :

- recherche sur des libellés voire sur les identifiants
- recherche au 3ème caractère saisi par défaut mais peut être 1er ou 2ème selon les cas
- mise en place de stopwords ou synonymes

Entre 2 enquêtes, la recherche (paramétrage) est identique pour une même nomenclature.

### En cas d'échos non trouvés ?

Dans les variables TCM, les listes contiennent une modalité "je n'ai pas trouvé dans la liste" et on on crée une autre variable avec une question filtrée

## Suggester à choix multi-variables (une réponse valorise plusieurs variables)

### Besoin
Lorsqu'on utilise une question à choix unique avec recherche sur liste ("Suggester"), on peut avoir dans la nomenclature des colonnes autres que l'identifiant et le label. <br>
On souhaite pouvoir récupérer les valeurs en même temps la variable contenant l'identifiant et les valeurs incluses dans d'autres colonnes.

### Scenario
!!! info 
    Dans l'exemple suivant, on souhaite récupérer dans la variable `CALC_VAR` la valeur correspondant à la colonne "label" de la nomenclature d'identifiant technique "COMMERCE-2024" lorsqu'on collecte comme identifiant la variable `SUGG`

#### Nomenclartue _Commerce-2024_
| id     | label               |
| ------ | ------------------- |
| 2444ZZ | Commerce de cuivre  |
| 0520ZZ | Commerce de lignite |

#### Étapes
1. Créer une variable collectée basée sur une question à choix unique avec recherche sur liste et avec l'id `SUGG`.
![alt text](../../img/pogues/var-sugg.png)
!!! abstract "Règle de nommage"
    C'est toujours mieux de nommer les variables en MAJUSCULE séparé par des '_'
2. Créer une variable calculée `CALC_VAR` avec la formule suivante : <br>
`left_join($SUGG$, "COMMERCE-2024" using id, label)`
![alt text](../../img/pogues/ex-var-cal-left-join.png)



#### Résultats 
Je peux ensuite afficher cette valeur, par exemple dans une déclaration, en appelant la variable calculée `CALC_VAR`

???+ example "Exemple de déclaration en VTL"
    ```js
    "Nomenclature avec les colonnes
    - id : " || nvl($SUGG$,"") || "
    - label : " || nvl($CALC_VAR$,"")
    ```

![alt text](../../img/pogues/ex-declaration-nomenclature-left-join.png)


##### En sélectionnant "Commerce de cuivre"
![alt text](../../img/pogues/res-sugg-commerce-cuivre.png)

##### En sélectionnant "Commerce de lignite"
![alt text](../../img/pogues/res-sugg-commerce-lignite.png)

!!! warning
    Le comportement actuel est temporaire du point de vue de l'UI Pogues.
    En effet, la variable CALC_VAR est définie dans Pogues comme une variable calculée mais d'un point de vue métier, c'est une variable **collectée**.
    Elle est bien considérée comme une variable collectée dans Lunatic. On peut la récupérer en téléchargeant les données depuis la visualisation DSFR. <br>
    A terme, on aura un UX dans Pogues qui sera plus cohérent avec ce concept. <br>
    Ex : Un bouton qui permet d'ajouter une paire clé/valeur qui indique le nom de la nouvelle variable collecté et le nom de la colonne dans la nomenclature 
