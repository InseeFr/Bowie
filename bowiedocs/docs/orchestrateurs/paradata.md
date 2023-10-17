# Les paradonnées

Les [paradonnées](https://en.wikipedia.org/wiki/Paradata) forment un ensemble d'informations relatives à la manière dont le questionnaire a été rempli. Elles permettent d'améliorer la compréhension des usages des répondants et de la manière dont ils répondent au questions.

Actuellement la collecte de paradonnées n'est effectuée que sur les questionnaires autoadministrés sur le web (dans [Stromae](../web/) donc).

L'offre de service actuelle, qui correspond aux paradonnées de type _orchestrateur_, permet de collecter :

- l'information sur les matériels et logiciels utilisés,
- la connexion au questionnaire,
- la déconnexion,
- les clics sur les boutons "Continuer" ou "Retour" (pour les changements de page).

Cela représente une offre de service minimale, dont on souhaite l'extension à terme. À la cible, il sera possible de collecter des informations fines sur le parcours du questionnaires. Il s'agit là de paradonnées de niveau _questionnaire_, qui permettront entre autres :

- l'entrée ou la sortie d'un champ de saisie
- l'historique de saisie (lettre à lettre pour un champ texte, modalités de réponse sur une liste, etc.)

La collecte de ce deuxième type de paradonnées implique nécessairement un plus grand volume de stockage et de circulation d'information, ce qui est à prendre en considération pour la collecte du questionnaire lui-même comme pour l'exploitation de ces données. On imagine donc pouvoir activer finement ces différents niveaux. On aurait donc :

- systématiquement des paradonnées de niveau _orchestrateur_ pour l'ensemble des enquêtes
- des paradonnées de niveau _questionnaire_ à configurer par enquête (par exemple en collectant toutes les informations les plus fines lors d'une opération pilote pour ne garder le niveau le plus fin lors de la collecte réelle que sur un sous-ensemble de questions).
