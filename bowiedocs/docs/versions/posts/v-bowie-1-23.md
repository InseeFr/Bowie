---
date: 2025-12-04
categories:
  - Bowie
authors: 
    - bowie_team
---

# 🚀 Bowie 1.23.0 

🌟 On peut désormais spécifier des questions de type QCM avec un caractère obligatoire. C'est compatible avec une demande de clarification sur l'une des modalités mais à réserver aux QCM simples (représentation des réponses sous forme de booléen) : on ne permet pas de spécifier de QCM avec représentation des réponses sous forme de liste de codes avec caractère obligatoire.

<!-- more -->

| Application              |              Version              |
| ------------------------ |:---------------------------------:|
| Pogues                   | 2.1.3 & 1.11.3  ➡️ 2.2.0 & 1.12.0 |
| Pogues-Back-Office       |         4.22.2 ➡️ 4.25.0          |
| Eno-WS Java              |         3.56.1 ➡️ 3.59.0          |
| Eno-WS Xml               |         2.22.0 ➡️  2.24.2         |
| Lunatic Pdf API          |               1.2.0               |
| Public-Enemy-Back-Office |               3.2.1               | 
| Queen                    |          3.1.2 ➡️  3.1.9          |
| Stromae DSFR             |          2.1.0 ➡️  2.3.1          |
| Stromae V1 (Orbeon)      |               5.0.3               |
| Stromae-db V1            |          2.1.3 ➡️ 2.1.4           |
| Questionnaire-API        |               5.4.0               |
| Walking papers           |               0.1.0               |

| Library                   | Version |
| ------------------------- |:-------:|
| Lunatic - Queen           |  3.7.3  |
| Lunatic - Stromae DSFR    |  3.7.3  |
| Lunatic - Lunatic Pdf API |  3.7.2  | 
| Lunatic - Walking papers  |  0.1.0  |



________________________________________________________________________________________________________________________________________
## 🐞 Corrections de Bugs

### **Pogues**
- L'usage du libellé par défaut pour la question associée à la demande de précision sur une modalité de QCU ou QCM ne provoque plus d'erreur VTL. On a maintenant "Préciser :"

### **Eno**
- Génération Papier
    - Le contenu des colonnes préremplies est ajusté en fonction de la taille de la colonne, afin qu'il soit lisible et ne "déborde" pas sur les autres lignes

### **Lunatic, queen, stromae-dsfr**
- Le bug concernant une boucle principale avec min <> max et une taille définie par une variable calculée et qui recalculait mal les variables calculées dépendant dans la taille de cette boucle est maintenant corrigé

### Stromae
- 🌟 En collecte web, si l'enquêté répond à une partie du questionnaire en étant hors ligne (coupure de réseau par exemple), un rattrapage des réponses est transmis au serveur dès qu'il valide une page après sa reconnexion. Il n'y a pas de perte de données.
- Faute d'orthographe corrigée quand on veut quitter le questionnaire : "renvoyer" -> "renvoyé"

## :star2: Fonctionnalités Utilisateurs

### **Queen**
- Le bouton suivant (➡️) dans les questionnaires enquêteurs déclenche maintenant les contrôles (comme pour le bouton Continuer).

### **Pogues**
- La fonctionnalité qui permet de dupliquer un questionnaire n'est pas disponible pour les questionnaires en cours de modification (non sauvegardé). Il faut d'abord cliquer sur le bouton de sauvegarde le cas échéant avant de pouvoir dupliquer le questionnaire.
- Un menu Protocoles contient maintenant les deux sous-menus "Récapitulatif de rond-point" et "Changement de mode"
    - Récapitulatif de rond-point
        - Dans le cas d'une collecte par enquêteur, un récapitulatif du rond-point du questionnaire est affiché dans le poste de collecte afin de permettre à l'enquêteur de mieux organiser son travail. 
        - Dans ce récapitulatif, les informations affichées sont communes à toutes les enquêtes mais leurs règles de calcul sont à décrire dans Pogues.
    - Changement de mode
        - Dans cette page, on décrit, pour les protocoles d’enquêtes complexes où les enquêteurs prennent le relais d’une collecte sur internet, les règles de changement de mode de collecte.
        - Ces règles sont spécifiées au niveau du questionnaire et/ou des occurrences d'un rond-point.
    !!! info
        C'est deux nouveaux menus sont des sous-menu du menu "Protocole". Par défaut ils sont désactivés et peuvent être activés si l'enquête en a besoin
- Ajout des nomenclatures dans Pogues EAP 2025

### **Pogues, Eno**
- ⭐ On peut désormais spécifier des questions de type QCM avec un caractère obligatoire. C'est compatible avec une demande de clarification sur l'une des modalités mais à réserver aux QCM simples (représentation des réponses sous forme de booléen) : on ne permet pas de spécifier de QCM avec représentation des réponses sous forme de liste de codes avec caractère obligatoire.

### **Eno**
- Génération Papier
    - Unités personnalisées et préremplissage : prise en compte des unités personnalisées sur le papier. Si l'unité est préremplie, elle est affichée, s'il s'agit d'une variable calculée, aucune unité n'est affichée
    - Non-affichage sur le papier des `nvl` (qui, sur la collecte web ou enquêteur, permettent de remplacer une valeur absente par une alternative).
    - Les cases des tableaux dynamiques qui n'ont pas à être remplies (d'après la description Pogues) par l'enquêté sont grisées

### **Stromae**
- ⭐ Il est désormais possible de télécharger au format json les données d'une unité enquêtée lorsqu'on recette un questionnaire avec la personnalisation.
- Accessibilité : 
    - Mise à jour de la page de déclaration d'accessibilité pour la collecte internet
    - En collecte web entreprise, 
        - le bouton qui permet d'étendre et de réduire l'affichage a été corrigé pour le rendre accessible
        - la description de l'image avec le logo Insee le pied de page a été corrigée pour rendre l'élément accessible
        - la description des QCM avec représentation sous forme de liste de codes a été corrigée pour rendre l'élément accessible

### **Lunatic, Eno, Queen**
- ⭐ On dispose désormais de tuiles non cliquables à droite de l'écran lorsqu'on remplit les réponses d'une occurrence d'un rond-point, dans le but de mieux repérer sur quelle occurrence on est