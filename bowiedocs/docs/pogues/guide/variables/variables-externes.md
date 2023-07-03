# Les variables externes

Pogues permet de référencer dans le questionnaire des variables externes, c'est à dire des variables qui sont fournies au chargement du questionnaire lors de la collecte, en provenance d'un fichier de données produit à partir de données connues et attachées à l'unité enquêtée.

Si le _typage_ disponible dans Pogues pour ces variables est celui disponible par ailleurs pour les variables collectées et calculées, on n'a en fait pas le choix : l'ensemble des variables externes injectées dans le questionnaire sont du __texte__.

L'impact : si ces variables doivent être utilisées comme numériques, il faut alors [les transformer](../../guide/vtl.md#transtypage). Par exemple :

```vtl
cast($VAR_EXT$, integer)
```
