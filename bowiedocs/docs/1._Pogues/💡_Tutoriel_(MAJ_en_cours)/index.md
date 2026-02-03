# Apprendre à utiliser Pogues

Pogues est l'interface graphique permettant de créer des questionnaires.Ce tutoriel décrit pas à pas la création d'un questionnaire pour aider les nouveaux utilisateurs de Pogues à se familiariser avec l'outil en implémentant les éléments les plus utilisés : séquences, questions, aides à l'enquêté, filtres, boucles... 
L'objectif est de vous permettre de démarrer sereinement avec l'outil, pour les fonctionnalités plus sophistiquées, rendez-vous dans le [:octicons-rocket-16: guide](../🚀_Guide/index.md).

!!! warning ":construction: Pogues évolue en continu pour mieux répondre aux besoins des utilisateurs ! Le tutoriel est en cours de mise à jour pour prendre en compte ces évolutions :construction:"
    Il est encore utilisable mais certaines fonctionnalités décrites ne sont plus à jour. <br>
    Les pages qui n'ont pas encore été mises à jour commencent par un bloc comme tel
    !!! danger "Page à mettre à jour"
    En cas de doute, **se référer au [:octicons-rocket-16: guide](../🚀_Guide/index.md)**

!!! note
    27/07/2023 - Le guide de référence pour les enquêtes entreprises de la filière historique Coltrane reste [celui-ci](https://inseefr.github.io/Pogues/fr/guide-utilisateur/guide-utilisateur.html).

!!! tip
    Pour bénéficier pleinement de ce tutoriel, nous vous encourageons à créer vos propres questionnaires sur cet [espace d'exploration](https://conception-questionnaires.demo.insee.io/). Plus d'info [ici](00-demo-env.md)




## Présentation du questionnaire pour le tutoriel 📄

### Contexte
Étude d'un **dispositif** auprès de ménages.

### Structure
Nous allons créer un questionnaire avec la structure suivante :

- Séquence "Informations sur le logement" :
    - Questions sur le logement du ménage interrogé
- Séquence "Tableau des habitants du logement" :
    - Questions d'identification des individus constituant le ménage
        - Boucle Principale `BOUCLE_PRENOMS` permettant d'identifier les individus du ménages
        - Boucle Liée `BOUCLE_INDIV` basée sur `BOUCLE_PRENOMS` permettant de poser une série de questions sur l'état civil de chaque individu du ménage.
- Séquence "Questionnaire individuel" :
    - Questions individuelles concernant le dispositif pour chaque
        - Rond-Point basé sur `BOUCLE_PRENOMS` premettant de naviguer entre les individus plus facilement qu'une boucle afin de leur poser à chacun les questions sur le dispositif.
        - Exclusion du questionnement les individus ne bénéficiant pas du dispositif 
- Séquence "Questionnaire commun" :
    - Questions concernant le dispositif mais pour tout le ménage cette fois
- Séquence "Fin"

!!! tip
    Nous détaillerons toutes ces notions dans les parties suivantes.

## C'est parti ! 🚀
Débutons par la [création d'un questionnaire](10-creation-questionnaire.md).
