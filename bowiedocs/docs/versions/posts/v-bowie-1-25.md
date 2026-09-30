---
date: 2026-02-17
categories:
  - Bowie
authors: 
    - bowie_team
---

# 🚀 Bowie 1.25.0 

🌟 Nouvelles variables globales issues des liens deux à deux

4 jeux de variables, mobilisables au sein d'une boucle liée à la boucle prénom, ont été créés:

- `GLOBAL_PARENT1_PRENOM` et `GLOBAL_PARENT1_SEXE` : un vecteur avec le prénom (resp. sexe) du premier parent déclaré pour chaque personne de la boucle prénom
- `GLOBAL_PARENT2_PRENOM` et `GLOBAL_PARENT2_SEXE` : un vecteur avec le prénom (resp. sexe) du deuxième parent déclaré pour chaque personne de la boucle prénom
- `GLOBAL_CONJOINT` : un vecteur avec le prénom du (premier) conjoint déclaré pour chaque personne de la boucle prénom
- `GLOBAL_ENFANTS_PRENOMS` : un vecteur avec la liste des prénoms des enfants pour chaque personne de la boucle prénom, s'il y a au moins 2 enfants les prénoms sont séparés par des #

Retrouvez la présentation de cette nouvelle fonctionnalité en images [🎥 ici](https://intranet.insee.fr/jcms/61481957_DBWikiPage/fr/-concevoir-pogues-les-communications-de-l-equipe-de-la-filiere-d-enquete) !

Une documentation détaillée sur les usages possibles de cette variable est disponible [📚 ici](../../1._Pogues/Guide/c._Variables/variables-globales.md)

<!-- more -->

| Application              |              Version              |
| ------------------------ |:---------------------------------:|
| Pogues                   |  2.3.0 & 1.13.0➡️  2.3.0 & 1.14.0   |
| Pogues-Back-Office       |         4.25.0   ➡️  4.26.0         |
| Eno-WS Java              |         3.59.0    ➡️  3.61.1        |
| Eno-WS Xml               |        2.26.0         |
| RedHot (Lunatic Pdf API)          |              1.5.2            |
| Public-Enemy-Back-Office |               3.2.1  ➡️  3.2.6               | 
| Queen                    |         3.1.9   ➡️  3.2.3         |
| Stromae DSFR             |  2.3.5   ➡️  2.4.2         |
| Stromae V1 (Orbeon)      |               5.0.3               |
| Stromae-db V1            |       2.1.4           |
| Questionnaire-API        |               5.4.0               |
| Walking papers (orchestrateur de saisie papier)          |               1.0.0               |

| Library                   | Version |
| ------------------------- |:-------:|
| Lunatic - Queen           |  3.7.3 ➡️  3.11.1   |
| Lunatic - Stromae DSFR    |  3.7.6 ➡️  3.11.1  |
| Lunatic - Lunatic Pdf API |  3.7.2  | 
| Lunatic - Walking papers  |  3.6.9 |



________________________________________________________________________________________________________________________________________
## 🐞 Corrections de Bugs

### **Lunatic, Drama-Queen, Stromae-dsfr, Eno**
- Anomalie où toutes les occurrences d'une boucle étaient filtrées à tort, dans le cas d'une boucle liée avec un filtre sur l'entièreté de la boucle, et lorsque la première occurrence est censée être filtrée.

    !!! example "Exemple"
        Prenons un questionnaire posant une question, `T_AGE`, sur l'âge de chaque individu du ménage. On a ensuite un ensemble de questions, mais sur lesquels on a posé un filtre `nvl($T_AGE$,0) < 60`. Si le ménage est constitué de 2 personnes, respectivement âgés de 61 ans et de 59 ans et déclarés dans cet ordre, alors théoriquement, on devrait filtrer le premier individu (occurrence) et poser les questions au deuxième.  
        Le bug conduisait à ne poser les question à personne. 

!!! info ""
    Maintenant, et dans le cas décrit ci-dessus, seules les occurrences vérifiant bien la condition du filtre sont effectivement filtrées.

- Problème d'effacement d'une valeur d'un champ (numérique ou texte) qui déclenchait à tort un filtre et donc pouvait effacer certaines valeurs déjà renseignées plus loin (contexte web ménage / enquêteur).

    !!! example "Exemple"
        Prenons un questionnaire posant une question, `T_AGE`, sur l'âge de chaque individu du ménage. On a ensuite un ensemble de questions, mais sur lesquels on a posé un filtre `nvl($T_AGE$,0) >= 16`, car on veut exclure les moins de 16 pour ces questions. Imaginons que l'on a déjà répondu à toutes ses questions pour un individu dont l'âge est 28, et que finalement, on veut changer la valeur de son âge à 29. On revient donc en arrière et sur le champ âge de l'individu, on va utiliser la touche de retour arrière puis saisir la nouvelle valeur ce qui va donner la suite suivante de valeurs : `28 → 2 → 29`  
        Ici, on est passé entre temps pas la valeur 2, qui est inférieur à 14, activant ainsi le nettoyage automatique du filtre et effaçant les réponses déjà renseignés dans les questions suivantes.

!!! info ""
    Désormais, le mécanisme de nettoyage automatique lié au filtre ne se déclenche que lorsqu'on passe à la page suivante (appuie sur le bouton continuer ou suivant).

### **Personnalisation-questionnaires-api**
- Il est possible de personnaliser des questionnaires volumineux (plus d'erreur 500).


## :star2: Fonctionnalités Utilisateurs

### **Eno, Lunatic, Pogues, Stromae-dsfr, Queen**
- ⭐ Nouvelles variables globales issues des liens deux à deux 
 Le format des données collectées lors d'une question de type [lien deux à deux](https://inseefr.github.io/Bowie/1._Pogues/%F0%9F%9A%80_Guide/Questions/16-liens-2a2/) ne permet pas à ce jour de mobiliser simplement, en cours de collecte chaque lien. Aussi, on vous fournit des variables système sous forme de vecteurs, faciles à manipuler avec des formules VTL dans le questionnaire.

4 jeux de variables, mobilisables au sein d'une boucle liée à la boucle prénom, ont été créés:

  -  `GLOBAL_PARENT1_PRENOM` et `GLOBAL_PARENT1_SEXE` : un vecteur avec le prénom (resp. sexe) du premier parent déclaré pour chaque personne de la boucle prénom
  -  `GLOBAL_PARENT2_PRENOM` et `GLOBAL_PARENT2_SEXE` : un vecteur avec le prénom (resp. sexe) du deuxième parent déclaré pour chaque personne de la boucle prénom
  -  `GLOBAL_CONJOINT` : un vecteur avec le prénom du (premier) conjoint déclaré pour chaque personne de la boucle prénom
  -  `GLOBAL_ENFANTS_PRENOMS` : un vecteur avec la liste des prénoms des enfants pour chaque personne de la boucle prénom, s'il y a au moins 2 enfants les prénoms sont séparés par des #