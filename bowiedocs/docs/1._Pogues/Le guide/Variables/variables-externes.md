# Les variables externes

Pogues permet de référencer dans le questionnaire des variables externes, c'est à dire des variables qui sont fournies au chargement du questionnaire lors de la collecte, en provenance d'un fichier de données produit à partir de données connues et attachées à l'unité enquêtée.

Si le _typage_ disponible dans Pogues pour ces variables est celui disponible par ailleurs pour les variables collectées et calculées, on n'a en fait pas le choix : l'ensemble des variables externes injectées dans le questionnaire sont du __texte__.

L'impact : si ces variables doivent être utilisées comme numériques, il faut alors [les transformer](../../guide/vtl.md#transtypage). Par exemple :

```vtl
cast($VAR_EXT$, integer)
```

## Ajouter des variables externes de portée Boucle

Dans certains protocoles complexes, on peut vouloir intégrer des variables externes correspondant à des variables collectées précédemement dans un autre questionnaire à l'intérieur d'une boucle.

Imaginons par exemple que dans le premier questionnaire, on ait demandé le nombre d'habitants du logement (variable `NBHAB`), puis, à l'intérieur d'une boucle répétée pour chaque habitant on ait collecté les prénoms et ages (respectivement les variables `PRENOM` et `AGE`).

Afin de récupérer ces variables dans le second questionnaire :

- je crée dans celui-ci la boucle `BOUCLE_PRINCIPALE`, avec un min et max dont la valeur est la variable `NBHAB` (à créer, voir ci-dessous),
- je crée  les variables externes `NBHAB` (Portée Questionnaire), `PRENOM` et `AGE` (portée `BOUCLE_PRINCIPALE`).

Il faudra ensuite fournir à l'intégration un fichier CSV contenant les variables et valeurs ad hoc (voir [ici](../../../public-enemy/guide/1-guide-pe-echantillon.md), section "Variables de portée Boucle")
