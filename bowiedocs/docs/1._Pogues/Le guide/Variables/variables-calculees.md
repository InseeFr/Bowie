# Création d'une variable calculée

Il peut être nécessaire de calculer des variables à partir d'autres variables du questionnaire pour certains contrôles notamment.
Une variable calculée se définit via l'onglet "Variables calculées" de n'importe quelle question du questionnaire.

Renseigner

- Libellé
- Identifiant
- Formule : possibilité d'utiliser des if, then, else if, else
  - Exemple : somme des pourcentages du chiffre d'affaires dédiés à certaines activités ou nombre de majeurs d'un ménage
- Type de réponse : parmi Texte, Date, Nombre, Booléen (cf. Création d'une question de type réponse simple)
- Portée : par défaut Questionnaire si la variable vaut la même valeur sur l’ensemble du questionnaire. Si la variable est occurrentielle (ie sa valeur dépend de la ligne sur laquelle on se trouve au sein d’un tableau dynamique ou de l’occurrence sur laquelle on se trouve au sein d’une boucle), renseigner ici l'élément itérable (tableau dynamique ou boucle du questionnaire) auquel se réfère la variable.

Valider
