# Les types de question

### Les questions ouvertes ou réponses dites simples

Les champs texte de plus de 20 caractères sont présentés avec une ligne (champ texte « court »), ou avec trois lignes pour les textes « longs » (supérieurs à 250 caractères). Les dates sont présentées avec des cases pour chaque position.

\[png014.png]

Les champs numériques, les champs texte de moins de 21 caractères (exemple : code postal, numéro Siren, Siret) peuvent être présentés avec du précasage ou sans précasage : il s’agit d’un paramètre à préciser lors de la génération du modèle de questionnaire. Le précasage est adapté à la lecture optique.&#x20;

Précasage (« saisie optique »)

\[png015.png]

Sans précasage (« saisie manuelle »)

\[png016.png]

### Les questions à choix unique de réponse

Pour le bouton-radio comme pour la case à cocher, la présentation papier sera une case à cocher (le bouton radio rond est un standard web qui n’est pas adapté à une saisie papier).&#x20;

Pour la liste déroulante, la présentation papier sera un champ de type texte. En effet, le recours à la liste déroulante est fréquent pour les longues listes de modalités que l’on ne souhaite pas imprimer exhaustivement dans un questionnaire.

\[png017.png]

### **Les questions à choix multiple**

Les questions à choix multiple suivent la même mise en forme que pour le web (possibilité d’avoir une case à cocher à gauche du libellé, ou une liste oui/non à droite). Les spécificités de forme précisées pour les questions à choix unique s’appliquent également (case à cocher uniquement, pas de bouton radio, liste déroulante remplacée par un champ texte libre).

\[png018.png]

### Les tableaux

La taille des colonnes des tableaux ou des batteries de questions n’est pas optimisée et l’affichage « par défaut » est un simple découpage en colonnes de taille égale. Cela peut faire l’objet d’adaptations lorsque cela est nécessaire.

\[png019.png]

**Cas des tableaux dynamiques :**

Le questionnaire web permet d’avoir des tableaux avec un nombre de lignes variables, le répondant pouvant ajouter lui-même des lignes : ce comportement dynamique est bien sûr impossible sur le papier. Par défaut, les tableaux dynamiques seront sur les questionnaires papiers des tableaux statiques comportant n lignes, ce n pouvant être paramétré.

\[png020.png]

### Les déclarations

Les déclarations (aides, consignes) sont présentées de la même façon que dans le web, sans distinction selon la nature de la déclaration.&#x20;

Les info bulles sont considérées comme une aide supplémentaire, non visibles en première intention sur le web, et ne sont donc pas présentes dans le questionnaire papier. Elles sont signalées par une \* dans le questionnaire : leurs contenus peuvent par exemple figurer dans une notice, non comprise dans le périmètre fonctionnel de Eno. Il est donc important de réfléchir aux contenus de ces infos-bulles et à l’information qu’on souhaite voir figurer sur les questionnaires.
