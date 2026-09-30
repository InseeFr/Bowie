---
date: 2026-05-18
categories:
  - Bowie
authors: 
    - bowie_team
---

# 🚀 Bowie 1.27.0 

Le service a repris, découvrez des nouveautés et quelques corrections de bugs, en particulier :

🌟 Il est désormais possible de créer une question de type QCU basée sur une variable de portée une boucle ou un tableau dynamique (ie, la variable est un vecteur, elle contient plusieurs valeurs) : les valeurs de la variable seront utilisées comme modalité du QCU.   
Retrouvez la documentation de cette nouvelle fonctionnalité [📚 ici](../../1._Pogues/Guide/b._Questions/15-reponse-choix-unique.md#variable-du-questionnaire).

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
        <td>2.4.1 & 1.15.0 ➡️ 3.1.0 & 1.15.0 </td>
        <td></td>
    </tr>
        <tr>
        <td>Pogues-Back-Office </td>
        <td>4.26.0 ➡️ 4.26.7</td>
        <td></td>
    </tr>
     <tr>
        <th colspan="3">Génération de questionnaires</th>
    </tr>
    <tr>
        <td>Java (Eno WS-Java) </td>
        <td>3.62.0 ➡️ 3.64.2 </td>
        <td></td>
    </tr>
        <tr>
        <td>Xml (Eno WS-Xml)</td>
        <td>2.27.1 </td>
        <td></td>
    </tr>
        <tr>
        <td>Support PDF (Lunatic-pdf-api) </td>
        <td>1.6.1 </td>
        <td>3.11.2 </td>
    </tr>
     <tr>
        <th colspan="3">Personnalisation de questionnaires</th>
    </tr>
    <tr>
        <td>Personnalisation de questionnaires API</td>
        <td>3.2.9 ➡️ 3.3.1 </td>
        <td></td>
    </tr>
    <tr>
        <th colspan="3">Visualisation de questionnaires</th>
    </tr>
    <tr>
        <td>Questionnaires enquêteurs (Queen)</td>
        <td> 3.3.0  ➡️ 3.3.2 </td>
        <td>3.12.0   ➡️ 3.13.4</td>
    </tr>
        <tr>
        <td>Questionnaires web (Stromae-dsfr)</td>
        <td> 2.6.0 ➡️2.7.0   </td>
        <td> 3.12.0  ➡️ 3.13.4 </td>
    </tr> 
            <tr>
        <td>API pour questionnaires web et enquêteurs</td>
        <td> 5.4.0 ➡️  5.7.3</td>
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
        <td>1.0.2  </td>
        <td>3.12.1  </td>
    </tr>
</table>
_______________________________________________________________________________________________________________________________________

## 🐞 Corrections de Bugs

### **Questionnaires enquêteurs**
- Le bouton "Visualize" est actif comme avant depuis la page de visualisation
- L'erreur d'affichage "First child component of a pairwise link must be a drop down" sur les liens 2 à 2 quand une personne quittait le logement est corrigée.

### **Questionnaires web**
- En visualisation web, le bug d'affichage sur la question de type lien 2 à 2 dans une boucle pour une modalité avec apostrophe (`L'enfant de` par exemple était remplacé par `&#x27;,`) est désormais corrigé.

### **Génération de questionnaires**
- Suggester : l'actualisation des variables calculées avec une formule VTL comportant un left_join (formule permettant d'afficher le libellé d'un suggester et non son code) a été corrigée. Pour les prochains questionnaires générés, il n'y aura plus d'incohérence entre la valeur du suggester et les variables calculées qui lui sont associées par un left_join.
- Les champs dans la page de liens 2 à 2 sont de nouveau bien filtrés quand un individu quitte le logement : effacement du prénom dans la boucle principale du TCM.


## :star2: Fonctionnalités Utilisateurs


### **Pogues, librairies de composants, questionnaires web et enquêteurs, génération**
- 🌟🌟 Il est possible de créer une question de type QCU basée sur une variable de portée une boucle ou un tableau dynamique (ie, la variable est un vecteur, elle contient plusieurs valeurs) : les valeurs de la variable seront utilisées comme modalité du QCU.
> [!TIP]
> #### Exemple avec une boucle 
> Au cours d'une question précédente, j'ai collecté le nombre d'habitants du logement ainsi qu'une liste de prénoms des habitants du logements dans une boucle et je souhaite afficher un QCU avec cette liste.  
> ```
>   **Q1 :** combien de personnes vivent dans le logement ?  
>     ... (n un nombre entre 1 et 10)  
>   **Q2.** boucle 1 Quel est le prénom de l'occupant n ?  
>     ... (on collecte n prénoms)  
>   **Q4.** Qui est le chef de la famille ?  
>     proposer la liste des n prénoms : dans la boucle 1 on a collecté la liste des prénoms (Q2)
> ```
  Une documentation plus complète est disponible [ici](https://inseefr.github.io/Bowie/1._Pogues/%F0%9F%9A%80_Guide/Questions/15-reponse-choix-unique/#variable-du-questionnaire). 


### **Pogues**
- Le champ `Description` de la page des filtres est changé en `Libellé du filtre pour le papier et autres orchestrateurs`
- La liste des nationalités étrangères a été mise à jour (pas de modification de contenu, uniquement clarification du nommage), pensez à re-générer vos variables collectées pour bénéficier de la dernière version.
- La liste des synonymes pour la configuration de recherche a été mise à jour pour les listes de nomenclature suivantes :
  - Activités
  - Activités naf 2025
  - Professions féminin
  - Professions masculin

### **Questionnaires web**
🌟🌟 Les données saisies sur une page du questionnaire Web sont désormais enregistrées (envoyées vers nos serveurs) automatiquement toutes les 3 min. Cela permet de réduire le risque de perte de données pour la collecte web.