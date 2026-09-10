# Question de type Recherche sur liste ("Suggester")

Le composant perm

## Paramètre de base
On effectue la recherche sur les libellés et/ou les identifiants suivant le paramétrage qui a été choisi pour chacune de ces nomenclatures.

Le paramétrage peut concerner les éléments suivants :

- recherche sur des libellés voire sur les identifiants
- recherche au 3ème caractère saisi par défaut mais peut être 1er ou 2ème selon les cas
- mise en place de stopwords ou synonymes

Entre 2 enquêtes, la recherche (paramétrage) est identique pour une même nomenclature.

## Recherche sur liste avec réponse libre
On peut définir un QCU avec recherche sur liste **et réponse libre** :  l'enquêté peut conserver le texte saisi si la recherche avec ce texte ne renvoie pas d'occurrence dans la nomenclature spécifiée par le concepteur.

??? example "Exemple d'utilisation"
    1. Pour activer cette fonctionnalité, il suffit de sélectionner `Oui` pour le champ **"Autoriser une réponse libre"**. (Par défaut ce champ vaut `Non`).
    ![alt text](../../../img/pogues/suggester_rep_libre.png)
    2. En générant les variables collectées, on remarque que l'on a **2 variables** :

        - Variable collectée `MA_VARIABLE` : *correspond aux recherches ayant abouti dans la liste.*
        - Variable collectée `MA_VARIABLE_ARBITRARY` : *correspondant aux recherches infructueuses pour lesquelles l'enquêté / l'enquêteur n'a aucun résultat et choisit de conserver sa saisie.*

            ??? note "Nommage de `MA_VARIABLE_ARBITRARY`"
                :warning: Le nom de la seconde variable est automatiquement générée mais est modifiable depuis l'onglet de gestion des variables collectées.
                ![alt text](../../../img/pogues/generate_arbitrary_var_for_suggester.png)
        
        !!! danger "Attention"
            On ne peut avoir une valeur renseigné pour ces deux variables en même temps : c'est l'une ou l'autre. **Ce point est à prendre en compte si on fait du pré-remplissage**
        
    3. Prenons par exemple la nomenclature sur les activités. Si on saisit 'Activités extract' on obtient les echos suivants
        ![alt text](../../../img/pogues/suggester_act_echo.png)
        En sélectionnant l'un des echos puis en appuyant sur 'Continuer', alors `MA_VARIABLE` prend la valeur de cet echo et `MA_VARIABLE_ARBITRARY` est `null`.

        Si on saisit 'extractionnn' aucun echo n'est trouvé dans la liste. On a alors la possibilité de sélectionner 'extractionnn' comme réponse.
        ![alt text](../../../img/pogues/suggester_act_echo_not_found.png)
        Si on clique sur 'choisir "extractionnn"' puis qu'on clique sur 'Continuer', alors `MA_VARIABLE_ARBITRARY` prend la valeur 'extractionnn' et `MA_VARIABLE` vaut `null`.

    L'option `Non` désactive cette fonctionnalité : l'utilisateur ne peut pas saisir de "réponse libre" = comportement "classique" du suggester.

!!! warning "Exception"
    **La fonctionnalité de recherche sur liste avec réponse libre ne marche dans les tableaux**

!!! tip "Ancien fonctionnement dans le TCM"
    Dans les variables TCM, les listes contiennent une modalité "je n'ai pas trouvé dans la liste" et on on crée une autre variable avec une question filtrée