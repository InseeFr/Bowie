# Création des unités enquêtées

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

!!!warning "Maximum 10 UE"

    Un fichier de données ne pourra contenir qu'un maximum de 10 unités enquêtées.

!!!warning "Encadrer les données avec `"`"

    Les valeurs d'en-tête et de lignes doivent être encadrées de `"`. Le fichier schéma téléchargé depuis Public Enemy contient bien ces double quotes pour les en-têtes.
    Pour bien s'assurer que cette contrainte est respectée, on peut ouvrir le fichier de données que l'on constitue avec un éditeur de texte comme Notepad++.

!!!note "Variables de portée Boucle ou lignes de tableaux dynamiques"

    Pour les variables de portée "Boucle" ou les lignes de tableaux dynamiques, il faudra créer autant de variables suffixées par un index que l'on veut d'occurrences ou de lignes. 
    Par exemple, pour une variable externe `PRENOM`, on fournira un fichier contenant `PRENOM_1`, `PRENOM_2`, ..., `PRENOM_N`.

Puis charger avec le bouton "Charger les unités enquêtées", puis valider la création avec le bouton "Créer le questionnaire dans les orchestrateurs".

!!!note

    Selon la taille du questionnaire cette création peut durer plusieurs minutes.
