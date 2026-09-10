# Suggester à choix multi-variables (une réponse valorise plusieurs variables)

!!! question "Utilité"
    Lorsqu'on utilise une question à choix unique avec recherche sur liste ("Suggester"), on peut avoir dans la nomenclature des colonnes autres que l'identifiant et le label.  
    On souhaite pouvoir récupérer les valeurs en même temps la variable contenant l'identifiant et les valeurs incluses dans d'autres colonnes.

## Exemple de mise en place
!!! info 
    Dans l'exemple suivant, on souhaite récupérer dans la variable `CALC_VAR` la valeur correspondant à la colonne "label" de la nomenclature d'identifiant technique "COMMERCE-2024" lorsqu'on collecte comme identifiant la variable `SUGG`

#### Nomenclartue _Commerce-2024_
| id     | label               |
| ------ | ------------------- |
| 2444ZZ | Commerce de cuivre  |
| 0520ZZ | Commerce de lignite |

#### Étapes
1. Créer une variable collectée basée sur une question à choix unique avec recherche sur liste et avec l'id `SUGG`.
![alt text](../../../img/pogues/var-sugg.png)
!!! abstract "Règle de nommage"
    C'est toujours mieux de nommer les variables en MAJUSCULE séparé par des '_'
2. Créer une variable calculée `CALC_VAR` avec la formule suivante : <br>
`left_join($SUGG$, "COMMERCE-2024" using id, label)`
![alt text](../../../img/pogues/ex-var-cal-left-join.png)



#### Résultats 
Je peux ensuite afficher cette valeur, par exemple dans une déclaration, en appelant la variable calculée `CALC_VAR`

???+ example "Exemple de déclaration en VTL"
    ```js
    "Nomenclature avec les colonnes
    - id : " || nvl($SUGG$,"") || "
    - label : " || nvl($CALC_VAR$,"")
    ```

![alt text](../../../img/pogues/ex-declaration-nomenclature-left-join.png)


##### En sélectionnant "Commerce de cuivre"
![alt text](../../../img/pogues/res-sugg-commerce-cuivre.png)

##### En sélectionnant "Commerce de lignite"
![alt text](../../../img/pogues/res-sugg-commerce-lignite.png)

!!! warning "Détail technique"
    Le comportement actuel est temporaire du point de vue du parcours utilisateur dans Pogues. <br>
    En effet, la variable `CALC_VAR` est définie dans Pogues comme une variable calculée mais d'un point de vue métier, c'est une variable **collectée**.
    Elle est bien considérée comme une variable collectée dans Lunatic. On peut la récupérer en téléchargeant les données depuis la visualisation DSFR. <br>
    
    A terme, on aura un parcours utilisateur dans Pogues qui sera plus cohérent avec ce concept. <br>
    Ex : Un bouton qui permet d'ajouter une paire clé/valeur qui indique le nom de la nouvelle variable collectée et le nom de la colonne dans la nomenclature 

### Questionnaire exemple

Pour référence, un [questionnaire implémentant cette solution :material-open-in-new:](https://conception-questionnaires-demo.insee.fr/questionnaire/m1holrzlDOC){target="_blank"} est disponible dans l'environnement de demo, sous le timbre DOCUMENTATION
