# Création d'un contrôle

Un contrôle permet de vérifier la qualité des informations saisies au sein d'un questionnaire. On peut également parler de contrôles de cohérence interne au questionnaire. Cela peut inclure la cohérence avec les données antérieures.

Côté visualisation web du questionnaire un contrôle se déclenche lorsque :
    - la condition est vraie ;
    - ET je clique sur suivant.

Dans l'onglet "Contrôles" de la question du questionnaire à partir de laquelle on veut appliquer le contrôle, renseigner :

- Description du contrôle : texte libre documentant le contrôle
- Condition (pour laquelle on affiche le message d'erreur) : on appelle les variables du questionnaire en saisissant le caractère dollar \$, au fur et à mesure de la saisie des caractères suivants, l'application propose de l'autocomplétion avec les variables du questionnaire  
- Message d'erreur : saisir ici le message d'erreur qui s'affichera à l'enquêté sur le questionnaire web si la condition est remplie
- Criticité : (comme pour le type de déclaration, il n'y a actuellement pas de différence pour le questionnaire ou l'enquêté entre les 3 criticités mais renseigner ce qui paraît le plus approprié)
  - Information
  - Avertissement
  - Erreur
- Valider

Il est également possible de supprimer ou dupliquer un contrôle

## Syntaxe pour les conditions des contrôles

Bien séparer les noms de variables (\$VAR\$) des opérateurs ou connecteurs logiques par des espaces et se référer au guide VTL <https://inseefr.github.io/Bowie/pogues/guide/vtl/> et à <https://inseefr.github.io/Bowie/pogues/guide/migration-xpath-vers-vtl/>
