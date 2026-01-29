# Création d'une question à choix multiples

La prochaine question sera à choix multiples qui permettra d'interroger notre enquêté sur sa/ses nationalité(s). Pour cela, on va poser une première question afin de déterminer s'il dispose uniquement de la nationalité française, uniquement d'une nationalité étrangère ou s'il est français et étranger.

- On crée une liste de code avec les différentes modalités de notre question, on va prendre les 4 modalités qui sont habituellement proposées dans le cadre des enquêtes ménage. 
![L_NATIO](liste-modalités-nationalités.png)

- on crée une question avec le libellé "Quelle est votre nationalité ?" et l'identifiant "T_NATIO"
- le _Type de question_ est "Réponse à choix multiple"
- dont la réponse est basée sur la liste de code L_NATIO qu'on vient de créer
- pour la _Représentation des réponse_ on garde le choix par défaut "Booléen".



!!! note

    La génération des variables ici va générer autant de variables _booléennes_ (vrai / faux) que d'éléments de la liste de codes.