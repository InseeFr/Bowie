# Les questions de type Réponse à choix unique


Pour créer une question de type **Réponse à choix unique**, on renseigne :

- le _type de réponse_ (liste de codes, recherche sur liste, variable)
- le _type de saisie_ (Bouton-radio, Liste déroulante, Recherche sur liste)

## Types de réponses

Il existe 3 types de réponse pour les questions QCU (question à choix unique). Les types de réponses correspondent à la façon dont on va décrire les modalités de réponses proposées à l'enquêté.

### Liste de codes

Avant de spécifier la question QCU avec une réponse de type sélection dans une liste de codes, il faut avoir créer la liste de codes.
![Créer un QCU réponse dans une liste de codes](../../../img/pogues/Creer_QCU_liste_codes.png)

La démarche pour créer une liste de codes est détaillée dans le tutoriel, [Création d'une réponse basée sur une liste](../../💡_Tutoriel_/14-creation-liste-qcu.md). On y retrouve également les conseils pour créer la question.

#### Possibilité de filtrer les modalités

Il est possible de filtrer la liste de modalités associée à la QCU selon des formules VTL. Pour plus d'info, voir la doc [Filtrer une liste de codes](../14-liste-codes.md/#filtrer-une-liste-de-codes)

#### Caractère obligatoire

Parmi les questions de type QCU, seules les questions QCU de type liste de codes permettent d'ajouter un caractère obligatoire à la question.

### Recherche sur liste (Suggester)

Le Suggester est le composant de recherche sur liste. Il permet d'offrir une recherche dynamique sur des listes volumineuses avec la présentation d'échos de réponse au fur et à mesure de la saisie.

Le type de réponse est imposé : c'est une liste déroulante dans laquelle l'enquêté sélectionne la modalité correspondant à sa situation.

Plus de détails dans la page [Suggester](15b-suggester.md).

### Variable du questionnaire



## Types de saisie

### Bouton-radio 
Ergonomie web standard pour ce type de réponse, on ne peut pas décocher la réponse à la question (on peut changer la réponse, mais on ne peut pas supprimer une réponse)). Exemple classique : Oui/Non, tranche de taille
Il faut "Spécifier la liste de codes" (c'est-à-dire décrire les modalités de réponse et les libellés associés)

### Liste déroulante 
Il faut "Spécifier la liste de codes" (c'est-à-dire décrire les modalités de réponse et les libellés associés)
### Case à cocher ( = Bouton-radio)
Le choix de cette option donne le même résultat que l'option "Bouton radio", les cases à cocher n'ayant de sens que s'il y a plusieurs réponses possibles (QCM).



