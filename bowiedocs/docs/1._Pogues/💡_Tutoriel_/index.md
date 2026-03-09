# Apprendre à utiliser Pogues

Pogues est l'interface graphique permettant de créer des questionnaires. 

Ce tutoriel décrit pas à pas la création d'un questionnaire pour aider les nouveaux utilisateurs de Pogues à se familiariser avec l'outil en implémentant les éléments les plus utilisés : séquences, questions, aides à l'enquêté, filtres, boucles... 

L'objectif est de vous permettre de démarrer sereinement avec l'outil : pour les fonctionnalités plus sophistiquées, rendez-vous dans le [:octicons-rocket-16: guide](../🚀_Guide/index.md).

!!! note
    27/07/2023 - Le guide de référence pour les enquêtes entreprises de la filière historique Coltrane reste [celui-ci](https://inseefr.github.io/Pogues/fr/guide-utilisateur/guide-utilisateur.html).

!!! tip
    Pour bénéficier pleinement de ce tutoriel, nous vous encourageons à créer vos propres questionnaires sur cet [espace d'exploration](https://conception-questionnaires.demo.insee.io/). Plus d'info [ici](00-demo-env.md)




## Présentation du questionnaire pour le tutoriel 📄

### Contexte
Étude des **relations au travail** auprès d'individus.

### Structure
Nous allons créer un questionnaire avec la structure suivante :

- Séquence "Quelques informations sur vous" :
    - Questions sur la personne interrogée pour décrire ses caractéristiques sociales
- Sous-séquence "Parlez-nous de vos collègues" :
    - Questions sur les relations avec les collègues dans une boucle 
- Séquence "Avis sur l'exercice" :
    - Questions concernant l'exercice pour clôturer le questionnaire
- Séquence "Fin"

!!! tip
    Nous détaillerons toutes ces notions dans les parties suivantes.

## C'est parti ! 🚀
Débutons par la [création d'un questionnaire](10-creation-questionnaire.md).
