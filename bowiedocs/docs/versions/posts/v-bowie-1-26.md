---
date: 2026-03-04
categories:
  - Bowie
authors: 
    - bowie_team
---

# 🚀 Bowie 1.26.0

🌟 Une nouvelle présentation de la variable "liens deux à deux" est proposée afin de faciliter la collecte de ces liens, notamment dans le contexte enquêteur. Deux présentations de la question de type liens deux à deux sont désormais possibles :

- sans boucle : tous les habitants sur la même page
- avec une boucle : une page par habitant du logement.

Retrouvez les détails de l'implémentation dans Pogues [📚 ici](../../1._Pogues/Guide/b._Questions/16-liens-2a2.md#deux-presentations-possibles).

<!-- more -->

<table>
    <tr>
        <th>Application</th>
        <th>Version</th>
        <th>Librairie de composants</th>
    </tr>
    <tr>
        <th colspan="3">Conception de questionnaires</th>
    </tr>
    <tr>
        <td>Pogues</td>
        <td>2.3.0 & 1.14.0➡️ 2.4.1 & 1.15.0</td>
        <td></td>
    </tr>
        <tr>
        <td>Pogues-Back-Office </td>
        <td>4.26.0</td>
        <td></td>
    </tr>
     <tr>
        <th colspan="3">Génération de questionnaires</th>
    </tr>
    <tr>
        <td>Java (Eno WS-Java) </td>
        <td>3.61.1   ➡️  3.62.0</td>
        <td></td>
    </tr>
        <tr>
        <td>Xml (Eno WS-Xml)</td>
        <td>2.26.0     ➡️  2.27.1</td>
        <td></td>
    </tr>
        <tr>
        <td>Support PDF (Lunatic-pdf-api) </td>
        <td>1.5.2    ➡️  1.6.1 </td>
        <td>3.7.2 ➡️  3.11.2</td>
    </tr>
     <tr>
        <th colspan="3">Personnalisation de questionnaires</th>
    </tr>
    <tr>
        <td>Personnalisation de questionnaires API</td>
        <td>3.2.6  ➡️  3.2.9 </td>
        <td></td>
    </tr>
    <tr>
        <th colspan="3">Visualisation de questionnaires</th>
    </tr>
    <tr>
        <td>Questionnaires enquêteurs (Queen)</td>
        <td>3.2.3   ➡️  3.3.0 </td>
        <td>3.11.1  ➡️  3.12.0  </td>
    </tr>
        <tr>
        <td>Questionnaires web (Stromae-dsfr)</td>
        <td> 2.4.2 ➡️  2.6.0 </td>
        <td>3.11.1  ➡️  3.12.0  </td>
    </tr> 
            <tr>
        <td>API pour questionnaires web et enquêteurs</td>
        <td> 5.4.0 </td>
        <td></td>
    </tr> 
     <tr>
        <td>Questionnaires Coltrane (V1 Orbeon)  </td>
        <td> 5.0.3 </td>
        <td></td>
    </tr> 
         <tr>
        <td>API pour questionnaires Coltrane (V1 Exist-db)  </td>
        <td> 2.1.4 </td>
        <td></td>
    </tr> 
    <tr>
        <td>Orchestrateur de saisie papier</td>
        <td> 1.0.0      ➡️  1.0.2 </td>
        <td>3.6.9 ➡️  3.12.1 </td>
    </tr>
</table>
_______________________________________________________________________________________________________________________________________

## 🐞 Corrections de Bugs

### **Questionnaires enquêteurs**
Dans la collecte des questionnaires avec enquêteur, quand un contrôle bloquant se déclenche sur un rond-point, alors le bouton `Continuer` se grise correctement. Si on rentre dans l'une des occurrences pour potentiellement corriger la valeur bloquante, le bouton `Continuer` se dégrise aussitôt qu'on est rentré alors qu'il restait désactivé jusque là.

### **Questionnaires web**
 Amélioration de la sauvegarde des données lors de longues périodes d'inactivité : un correctif de bug a été déployé le 23/02. Il vise d'une part à de ne plus perdre les données en cours de saisie, et d'autre part à ne plus avoir de confusion sur l'état connecté ou déconnecté de l'utilisateur.

## :star2: Fonctionnalités Utilisateurs

### **Pogues**
-  Nomenclatures
   -	Suppression des nomenclatures « EAP 2024 » ;
   -	La liste de nomenclature "Activités Naf 2025" a été ajouté à Pogues (divisions de la naf 2025 - 2 positions) ;
   -	Les listes de "Professions féminin" et "Professions masculin" ont été mise à jour avec la version 2026. Pensez bien à regénérer les variables collectées des questions utilisant ces listes pour bénéficier de la mise à jour.

- Dans Pogues, les variables externes créées sont toutes de type texte afin de ne plus avoir de conflit avec les autres composants de l'application (constitution de l'échantillon d'unités enquêtées, aval). 
Les variables existantes dans les questionnaires ayant un type autre que texte (date, numérique, booléen) continuent de fonctionner mais en modification, le seul type qu'il est possible de sélectionner est le texte.

### **Pogues, librairies de composants, questionnaires web et enquêteurs, génération**
⭐ ⭐Une nouvelle présentation de la variable "liens deux à deux" est proposée afin de faciliter la collecte de ces liens, notamment dans le contexte enquêteur. Deux présentations de la question de type liens deux à deux sont désormais possibles :
-  sans boucle : tous les habitants sur la même page
-  avec une boucle : une page par habitant du logement

Retrouvez les détails de l'implémentation dans Pogues [ici](https://inseefr.github.io/Bowie/1._Pogues/%F0%9F%9A%80_Guide/Questions/16-liens-2a2/#deux-presentations-possibles)

### **Support PDF**
Le contenu du support de données PDF a été enrichi, afin de faciliter les échanges entre les gestionnaires en charge de la reprise et les unités enquêtés qu'ils contactent 
On y retrouve désormais :
- une page de garde avec l'identifiant de l'enquête et de l'unité enquêté, la date de validation du questionnaire et la date de génération du document;
- un pied de page avec le rappel de l'enquête, l'unité enquêté et la date de génération du document.

Par ailleurs, des travaux ont permis d'améliorer l'affichage des tableaux.