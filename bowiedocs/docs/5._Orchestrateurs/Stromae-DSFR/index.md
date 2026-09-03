# Orchestrateur pour la collecte web Stromae

L'INSEE et certains SSM proposent aux ménages et aux entreprises enquêtés de répondre par internet, via des questionnaires autoadministrés.
 
L'application web permettant cette réponse aux questionnaires utilise la bibiliothèque de composants Lunatic et son ergonomie repose sur une charte ergonomique qui garantit une homogénéité et une efficacité d’usage.

Stromae DSFR est le nouvel orchestrateur pour les questionnaires web. Il sera utilisé pour les collectes des enquêtes dès le mois d'août 2024.

Pour en savoir plus sur [Stromae DSFR](https://inseefr.github.io/stromae-dsfr/docs/docs/intro/).

Vous trouverez également ci-dessous un bref récapitulatif des fonctionnalités nouvelles de cet orchestrateur.

## Visuel

- révision du visuel (questions, sous-séquences, séquences, déclarations, tableaux, en-tête, pied de page)
- ajout d'une description au dessus des champs numériques afin de préciser l'unité et les bornes
- affichage des liens deux à deux, remplissage de la matrice des liens
- affichage des infobulles

## Navigation

- présence sur chaque page des boutons Continuer / Précédent
- en cas de déconnexion, possibilité, à la reconnexion d'accéder à la dernière page accédée ou à la première page du questionnaire
- navigation linéaire, sauf cas du rond-point - à venir

## Fonctionnel dans le questionnaire

- déclenchement des contrôles au changement de page
- possibilité de collecter des durées (heures/minutes, années/mois), ou des dates (année seule, mois/année)
- possibilité de collecter des données via des tableaux dynamiques, avec contrôles
- affichage du nom de la séquence sur chaque page
- spécificités du découpage par séquence :
  - affichage des déclarations sous le titre de la séquence
  - ajout d'un étapier - basé sur le nombre de séquences du questionnaire (qu'elles soient filtrées ou non)
  - possibilité d'élargir la zone d'affichage des questions et réponses

## Fonctionnel en dehors du questionnaire

- sauvegarde à chaque changement de page, que le questionnaire soit présenté en mode "une question par page" ou "une question par séquence" (ajout d'un message indiquant la sauvegarde *ou non* des données)
- première page du questionnaire : c'est aujourd'hui une version simplifiée de la cible : elle sera revue pour être cohérente avec les informations du portail de collecte
- possibilité de contacter l'assistance, de passer en mode sombre
- logos : les logos présentés sont amenés à évoluer en fonction des enquêtes collectées.
