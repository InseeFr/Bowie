# Création des unités enquêtées

## Processus

Après l'import du questionnaire Pogues, il faut fournir les unités enquêtées de test afin de créer les questionnaires correspondant dans les différents orchestrateurs.

Pour cela, il faut transmettre un fichier CSV donnant les valeurs associées aux variables externes décrites dans Pogues.

Le bouton "Schéma CSV attendu" permet de télécharger un fichier CSV contenant l'entête des variables, à compléter avec les valeurs associées aux unités enquêtées.

![Schéma CSV attendu](../../img/public-enemy/schema-attendu.png)

Si mon questionnaire Pogues contient deux variables externes, `SIREN` et `ACTIVITE`, je les retrouve dans le fichier ainsi téléchargé.

Dans Pogues :

![Variables externes Pogues](../../img/public-enemy/var-ext-pogues.png)

Dans le fichier CSV de schéma :

![Variables externes schéma](../../img/public-enemy/var-ext-schema.png)

On peut remplir les données à partir de ce fichier schéma :

...![Variables externes données](../../img/public-enemy/var-ext-data.png)

## Point d'attention

!!!danger "Encadrer les données avec `""`"

    - Les valeurs d'en-tête et de lignes doivent être encadrées de `""`. Le fichier schéma téléchargé depuis Public Enemy contient bien ces double quotes pour les en-têtes.
    - Si on utilise Libre Office Calc pour éditer ce fichier, on peut utiliser [**cette astuce**](https://help.libreoffice.org/latest/fr/text/scalc/guide/csv_files.html) pour s'assurer que les `""` sont bien toujours présentes après enregistrement
    - Pour bien s'assurer que cette contrainte est respectée, on peut ouvrir le fichier de données que l'on constitue avec un éditeur de texte comme Notepad++.

    ???example "Exemple de fichier csv valide"
        ```
        "SIREN","ACTIVITE","SALARIE_PRENOM_1","SALARIE_PRENOM_2","SALARIE_PRENOM_3",
        "120027016","BTP","Pierre","Géraldine",""
        "987654321","COMMERCE","Solange","Ludovic","Camille"
        ```

!!! warning "Type des variables externes"
    - Toutes les variables externes sont importées avec en tant que texte (= type `string`). **il faut donc bien penser à utiliser la fonction de [cast()](../../1._Pogues/Le%20VTL%20dans%20Pogues/fonctions-vtl.md/#cast) au besoin**  

!!!warning "Maximum 10 UE"

    - Un fichier de données ne pourra contenir qu'un maximum de 10 unités enquêtées.

!!!warning "Ordre des listes de plus de 10 éléments dans un tableau dynamique"

    - Si pour une UE on a une variable sous forme de vecteur et qu'on injecte plus de 10 élément, alors ces derniers ne seront pas affichés dans le bon ordre
    
    
    Ex: J'ai une variable externe LISTE
    ```
    LISTE = [LISTE_1,LISTE_2,...,LISTE_9,LISTE_10,LISTE_11]
    ```
    si j'injecte cette variable dans l'une des colonne d'un tableau et que je visualise, je vais avoir l'ordre suivant
    ```
    LISTE_1, LISTE_10, LISTE_11, LISTE_2, LISTE_3, ...
    ```
    
    ??? example "exemple"
        ```title="Exemple de csv à importer dans Public Enemy"
        "LISTE_1","LISTE_2","LISTE_3","LISTE_4","LISTE_5","LISTE_6","LISTE_7","LISTE_8","LISTE_9","LISTE_10","LISTE_11"
        "code 1","code 2","code 3","","","","","","","","11"
        "1","2","3","4","5","","","","","",""
        "1","2","3","4","5","6","7","8","9","10","11"
        ```
        ![alt text](../../img/pogues/wrong_order_list_ext.png)

!!!note "Variables de portée Boucle ou lignes de tableaux dynamiques"

    Pour les variables de portée "Boucle" ou les lignes de tableaux dynamiques, il faudra créer autant de variables suffixées par un index que l'on veut d'occurrences ou de lignes. 
    Par exemple, pour une variable externe `PRENOM`, on fournira un fichier contenant `PRENOM_1`, `PRENOM_2`, ..., `PRENOM_N`.

Puis charger avec le bouton "Charger les unités enquêtées", puis valider la création avec le bouton "Créer le questionnaire dans les orchestrateurs".

!!!note

    Selon la taille du questionnaire cette création peut durer plusieurs minutes.
