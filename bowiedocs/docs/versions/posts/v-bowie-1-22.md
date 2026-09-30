---
date: 2025-10-15
categories:
  - Bowie
authors: 
    - bowie_team
---

# 🚀 Bowie 1.22.0 

🌟 Pogues propose de nouvelles nomenclatures : Naf 2008 et Naf 2025, ainsi que les communes 2025. Les nomenclatures Diplômes, Eau (EAP) et Déchets (EAP) ont été mises à jour. Pensez à regénérer les variables collectées dans les questions qui font appel à ces nomenclatures pour bénéficier des nouvelles versions !


🌟 Correction de bugs sur les boucles.

<!-- more -->

| Application              |             Version              |
| ------------------------ |:--------------------------------:|
| Pogues                   | 2.1.1 & 1.11.1 ➡️ 2.2.1 & 1.11.5 |
| Pogues-Back-Office       |        4.21.3 ➡️   4.23.1        |
| Eno-WS Java              |         3.55.0 ➡️ 3.56.1         |
| Eno-WS Xml               |        2.13.2 ➡️  2.23.0         |
| Public-Enemy             |          **DEPRECATED** |
| Public-Enemy-Back-Office |         3.1.2 ➡️   3.2.1         |
| Queen                    |         2.5.8 ➡️  3.1.2          |
| Stromae DSFR             |         1.5.1 ➡️   2.1.2         |
| Stromae V1 (Orbeon)      |              5.0.3               |
| Stromae-db V1            |              2.1.3               |
| Questionnaire-API        |          4.2.1 ➡️ 5.4.0          |

| Library                |     Version     |
| ---------------------- |:---------------:|
| Lunatic - Queen        | 3.6.14 ➡️ 3.7.1 |
| Lunatic - Stromae DSFR | 3.6.13 ➡️ 3.7.1 |


________________________________________________________________________________________________________________________________________
## 🐞 Corrections de Bugs

### **Eno**
- Le bug faisant apparaître une page blanche quand une boucle est filtrée est résolu ;

### **Stromae-dsfr**
- Le textArea quand il est en lecture seule dans un tableau dynamique a le même visuel qu'un input text simple ;
- Désormais, l'enquêté ne peut valider l'envoie des données en fin de questionnaire (bouton "Envoyer mes réponses") si ce dernier est Hors-ligne. Un message d'erreur apparait quand c'est le cas et l'enquêté reste sur la même page.

### **Eno, Lunatic, Stromae-dsfr**
- Correctif du bug qui filtrait à tort toutes les occurrences de boucle ayant une condition d'exclusion (champ SAUF :) qui portait sur la première occurrence.

### **Lunatic, Queen, Stromae-dsfr**
- Quand on répond aux questions d'une boucle principale en mode une occurrence par page, il n'y a pas de persistance de données à l'affichage d'une occurrence à l'autre, quel que soit le format de la question.

### **Pogues**
- Le fichier json téléchargé depuis la personnalisation avec le bouton "Télécharger le jeu de données existantes" est bien équivalent à celui utilisé pour la personnalisation. Avant on avait des [object Object] ;
- Lorsqu'on définit question simple de type date, on doit obligatoirement renseigner le champ Format*, le minimum*, le maximum*. Si le format n'est pas respecté pour les champs min et max, on ne peut valider le formulaire de la colonne en question ;
- Lorsqu'on définit une colonne de type date dans un tableau, on doit obligatoirement renseigner le champ Format*, le minimum*, le maximum*. Si le format n'est pas respecté pour les champs min et max, on ne peut valider le formulaire de la colonne en question.
- Correction du bug empêchant la visualisation de questionnaire au format PDF quand il y avait des questions de type QCM, QCU ou Booleen.
- Personnalisation : (*Public Enemy BO*)
  - La limite de longueur 1 pour les QCU n'existe plus lors du chargement d'un json de personnalisation de questionnaire. Un futur développement prendra mieux en compte les dimensions des codes du QCU.

## :star2: Fonctionnalités Utilisateurs

### **Stromae-dsfr**
- Désormais lorsqu'un enquêté répond sur le web, il dispose du rappel de l'unité enquêtée sur toutes les pages du questionnaire (dans le bandeau). Cela permet d'éviter les confusions, notamment en contexte entreprise, lorsqu'un utilisateur (par exemple un cabinet comptable) répond plusieurs fois pour des entités différentes.
- Le nouveau logo Insee est correctement affiché en mode sombre

### **Pogues**
- les nomenclatures DIPLOMES, EAU et DECHETS (EAP) ont été mises à jour
- 1 nouvelle liste disponible dans le référentiel de nomenclature Pogues : communes 2025 
- 2 nouvelles listes sont disponibles dans le référentiel de nomenclature Pogues : les sous-classes de la Naf rév. 2 2008 et de la Naf 2025
- Gestion du "dirty state" pour les menus de la barre latérale gauche : quand on quitte une page alors qu'on est en cours de modification sans avoir sauvegardé, une modale apparait pour nous prévenir qu'on va perdre les changement en cours et nous demande de confirmer.

### **Queen**
- le logo de l'Insee a été mis à jour

### **Eno**
- Génération Papier
  - Permettre la personnalisation avec les champs input matérialisés sur le papier
  - Mieux distinguer le champ de saisie de l'unité quand je remplis un questionnaire papier.
  - Suppression des cast et des || dans les descriptions de filtres et les libellés
  - Améliorer la lisibilité du papier en interprétant certaines fonctions VTL
  - Les informations sur le contact sont bien renseignées au sein des preuves de dépôt 