# Création d'une question à choix multiples

La prochaine question sera à choix multiples. Pour cela :

- on crée une question avec le libellé "Avez-vous déjà exercé les activités suivantes au sein de votre carrière ?" et l'identifiant "CARRIERE"
- le _Type de question_ est "Réponse à choix multiple"
- dont la réponse est basée sur une liste de code ["metiers.csv"](../../data/metiers.csv)
- pour la _Représentation des réponse_ on garde le choix par défaut "Booléen".

!!! note

    La génération des variables ici va générer autant de variables _booléennes_ (vrai / faux) que d'éléments de la liste de codes.