---
date: 2026-09-22
categories:
  - Bowie
authors: 
    - bowie_team
---

# 🚀 Bowie 1.30.0 

De nouvelles fonctionnalités et quelques corrections de bugs et de sécurité en cette rentrée scolaire 2026 ✨ :

- Nouvelle page de "Détails" d'un questionnaire pour mieux gérér ses métadonnées.
- Utilisation du registre de nomenclature pour simplifier le processus d'intégration de questionnaire
- Une page "Nous contacter" maintenant accessible (bouton en haut à droite)
- Quand on modifie une liste de codes, une nouvelle modale d'avertissement indique que l'on va re-générer les variables collectées associées aux questions liées à la liste. La liste des questions est affichée dans la modale.
  
	!!! warning "Avertissement"
    	La re-génération ne se produit que pour les questions de types QCM ou Tableau, c'est à dire, quand il y a plusieurs variables générées par une même question.

- Nouvelle fonctionnalité bientôt disponible : la Publication de questionnaires depuis Pogues  

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
        <td> 3.4.0 ➡️ 3.8.4 </td>
        <td/>
    </tr>
    <tr>
        <td>Pogues-Back-Office </td>
        <td> 4.36.0 ➡️ 5.4.0 </td>
        <td/>
    </tr>
     <tr>
        <th colspan="3">Génération de questionnaires</th>
    </tr>
    <tr>
        <td>Java (Eno WS-Java) </td>
        <td> 3.64.6 ➡️ 3.65.1 </td>
        <td/>
    </tr>
    <tr>
        <td>Xml (Eno WS-Xml)</td>
        <td> 2.29.5 ➡️ 2.32.1 </td>
        <td/>
    </tr>
    <tr>
        <td>Support PDF (Lunatic-pdf-api) </td>
        <td>1.6.1 ➡️ 1.6.5 </td>
        <td>3.11.2 ➡️ 3.13.4 </td>
    </tr>
     <tr>
        <th colspan="3">Personnalisation de questionnaires</th>
    </tr>
    <tr>
        <td>Personnalisation de questionnaires API</td>
        <td> 3.3.2 ➡️ 3.5.1 </td>
        <td/>
    </tr>
    <tr>
        <th colspan="3">Visualisation de questionnaires</th>
    </tr>
    <tr>
        <td>Questionnaires enquêteurs (Queen)</td>
        <td> 3.6.2 ➡️ 3.7.2</td>
        <td> 3.13.4</td>
    </tr>
        <tr>
        <td>Questionnaires web (Stromae-dsfr)</td>
        <td> 2.9.0 ➡️ 2.10.1  </td>
        <td> 3.13.4 </td>
    </tr> 
    <tr>
        <td>API pour questionnaires web et enquêteurs</td>
        <td> 5.4.0 ➡️ 5.11.0 </td>
        <td/>
    </tr> 
    <tr>
        <td>Questionnaires Coltrane (V1 Orbeon)  </td>
        <td> 5.0.3 </td>
        <td/>
    </tr> 
    <tr>
        <td>API pour questionnaires Coltrane (V1 Exist-db)  </td>
        <td> 2.1.4 ➡️ 2.2.0 </td>
        <td/>
    </tr> 
    <tr>
        <td>Orchestrateur de saisie papier</td>
        <td> 1.0.2 ➡️ 1.0.7 </td>
        <td> 3.12.1 </td>
    </tr>
    <tr>
        <th colspan="3">Mise à disposition</th>
    </tr>
    <tr>
        <td>Registre de questionnaires API</td>
        <td> 1.0.1 ➡️ 2.10.3 </td>
        <td/>
    </tr>
</table>
_______________________________________________________________________________________________________________________________________

## 🔐 Sécurité

- Correction de failles critiques identifiées sur les APIs
- Plus aucun modèle de questionnaire de type fo (utilisé pour les impressions de questionnaires papier) n'est généré avec des `-` 


## 🐞 Bugs
### **Papier**
- Lorsqu'une expression contient $var$ in {...}, la génération du papier fonctionne de nouveau, et cette expression est bien interprétée.

## ✨ Fonctionnalités Utilisateurs

### **Pogues**
- ⭐ **Nouvelle page de "Détails" d'un questionnaire :**
    - Maintenant, c'est dans la page de détails que l'on définit les métadonnées du questionnaire comme le Titre, le Nom court, la Série au sens Rmés, le(s) mode(s) de collecte, etc.
    - Il est possible de modifier la page "Détails" d'un questionnaire sans avoir à préciser la série (par exemple lorsque le questionnaire est en cours de rédaction ou qu'il s'agit de formation/test).
    - La recherche dans le champ Série de la page "Détails" n'est pas sensible à la casse : une recherche avec `Mot` ou `mot` est équivalente. De même pour les accents : `enquête` et `enquete` retournent les mêmes échos.
    - La série propre à Pogues `TCM` a été ajoutée à la liste des séries disponibles.
    - Quand je consulte une sauvegarde Pogues, si je vais ensuite sur la page Détails, je suis bien sur **la page de détails qui concerne la sauvegarde**. Un bandeau avec un encadré bleu indiquant "Cette sauvegarde du questionnaire est en lecture seule." est affiché en haut de la page. De plus, comme pour les autres pages, il y a dans ce bandeau un bouton de restauration de la sauvegarde.
- ⭐ **Nomenclatures** 
    - Les nomenclatures sont maintenant directement récupérées depuis un unique registre. Cela simplifie et rend le processus d'intégration de nouvelles nomenclatures plus robuste et rapide, et ces nomenclatures pourront être accessibles par les environnements de collecte.
    - De plus, la page listant les nomenclatures du questionnaire affiche désormais plus d'informations :
        - `Libellé` : nom se retrouvant dans le menu déroulant quand on sélectionne une nomenclature
        - `Thème`: thématique de la nomenclature
        - `Millésime` : année de publication de la nomenclature
        - `Version` : version du contenu de la nomenclature ; est conditionnée par le couple (`Thème`, `Millésime`)
- Une page "**Nous contacter**" est maintenant accessible via un texte cliquable en haut à droite : selon le problème rencontré plusieurs interlocuteurs peuvent être joints.
- Désormais, lorsque l'on duplique un questionnaire, la version dupliquée s'ouvre dans un nouvel onglet, directement accessible à l'édition
- Pour les questionnaires composés comportant beaucoup de modules importés, le chargement des pages dans Pogues est maintenant plus rapide (page de variables, de nomenclatures, etc)
- En tant que gestionnaire d'enquête, il est maintenant possible de naviguer librement parmis les séquences du questionnaire, depuis Sabiane-Gestion : en mode lecture seule.
- Quand on modifie une liste de codes, une nouvelle modale d'avertissement indique que l'on va re-générer les variables collectées associées aux questions liées à la liste. La liste des questions est affichée dans la modale. 
  - ⚠️ La re-génération ne se produit que pour les questions de types QCM ou Tableau, ie quand il y a plusieurs variables générées par une même question.

### **Saisie Papier** (dans Platine Gestion)
- L'orchestrateur de saisie papier proposé dans Platine s'ouvre désormais dans le même onglet que celui de l'interrogation. De plus, la gestion de session de connexion a été améliorée, afin qu'en cours de saisie de questionnaire papier, l'utilisateur ne soit pas déconnecté sans le savoir et ne perde ses dernières modifications.


### Registre
- Les nomenclatures sont enregistrées dans le registre avec les attributs suivants :
	- **"id"**: _uuid_,
	- **"label"**: _Libellé_,
	- **"version"**: _Version_,
	- **"theme"**: _Thème_,
	- **"referenceYear"**: _Millésime_,
	- **"urn"**: _lien vers RMéS_,
	- **"isDeprecated"**: _si une nomenclature avec un millésime plus récent pour une même thématique est disponible, on déprécie l'ancienne_
	- **"isValid"**: _si une coquille est présente dans une nomenclature, on peut rendre cette nomenclature invalide afin qu'elle ne soit plus proposée par le registre_,
	- **"searchConfiguration"**: _paramètre de configuration_
