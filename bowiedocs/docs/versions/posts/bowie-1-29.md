---
date: 2026-06-24
categories:
  - Bowie
authors: 
    - bowie_team
---

# 🚀 Bowie 1.29.0 

Des nouveautés et quelques corrections de bugs, en particulier :

🌟 Il est maintenant possible de filtrer les modalités d'un QCU basé sur une variable du questionnaire (collectée, externe ou calculée).
La formule VTL s'applique en exploitant des variables de portée questionnaire ou de même portée que la variable décrivant les modalités du QCU.

Par exemple, je peux filtrer la variable PRENOM issue d'une boucle `BOUCLE_PRENOM` utilisant dans ma formule VTL toute variable de portée `BOUCLE_PRENOM` qu'elle soit collectée, externe ou calculée.

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
        <td> 3.2.4  ➡️ 3.4.0  </td>
        <td></td>
    </tr>
        <tr>
        <td>Pogues-Back-Office </td>
        <td>4.33.0 ➡️ 4.36.0</td>
        <td></td>
    </tr>
     <tr>
        <th colspan="3">Génération de questionnaires</th>
    </tr>
    <tr>
        <td>Java (Eno WS-Java) </td>
        <td>3.64.4  ➡️ 3.64.6 </td>
        <td></td>
    </tr>
        <tr>
        <td>Xml (Eno WS-Xml)</td>
        <td> 2.29.3 ➡️ 2.29.5</td>
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
        <td> 3.3.2 </td>
        <td></td>
    </tr>
    <tr>
        <th colspan="3">Visualisation de questionnaires</th>
    </tr>
    <tr>
        <td>Questionnaires enquêteurs (Queen)</td>
        <td> 3.5.0   ➡️ 3.6.2 </td>
        <td> 3.13.4</td>
    </tr>
        <tr>
        <td>Questionnaires web (Stromae-dsfr)</td>
        <td>2.8.0 ➡️2.9.0   </td>
        <td> 3.13.4 </td>
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
        <td>1.0.2  </td>
        <td>3.12.1  </td>
    </tr>
</table>
_______________________________________________________________________________________________________________________________________

## 🐞 Corrections de Bugs

### **Visualisation de questionnaires**

La visualisation directe en mode collecte enquêteur avec chargement de nomenclatures à façon est à nouveau possible.

*Rappel : pour créer une visualisation (web comme enquêteur) depuis l'url dédiée, les champs Source, datas, nomenclatures etc doivent provenir des domaines insee.fr et sspcloud.fr (minio).*

### **Conception de questionnaires**

Dans Pogues, quand je créé une question de type liens deux à deux, les champ "Choisir une liste de codes" et "Variable source du prénom" sont obligatoires.


## :star2: Fonctionnalités Utilisateurs


### **Pogues**
- Il est possible de filtrer les modalités d'un QCU basé sur une variable du questionnaire (collectée, externe ou calculée). 

La formule VTL s'applique en exploitant des variables de portée questionnaire ou de même portée que la variable décrivant les modalités du QCU.

Par exemple, je peux filtrer la variable PRENOM issue d'une boucle BOUCLE_PRENOM utilisant dans ma formule VTL toute variable de portée BOUCLE_PRENOM qu'elle soit collectée, externe ou calculée.

La même logique que pour filtrer une question est appliquée : on propose un éditeur VTL conditionnant l'affichage de la modalité avec les règles suivantes :
| Validité de la Formule VTL | Condition d'affichage | Résultat |
| ----------------- | --------------------- | --------- |
| Pas de formule | / | la modalité est affichée |
| ❌ | `ERROR` | la modalité est affichée |
| ✅ | `TRUE`  | la modalité est affichée |
| ✅ | `FALSE` | la modalité n'est pas affichée |

La documentation est disponible [ici](https://inseefr.github.io/Bowie/1._Pogues/%F0%9F%9A%80_Guide/Questions/15-reponse-choix-unique/#filtrer-les-modalites_1).

- Lorsque je récupère un questionnaire d'une sauvegarde précise, le mécanisme de nettoyage (nomenclatures plus utilisées par exemple) est mis en place sur le modèle de questionnaire récupéré en base de données (rétrocompatibilité).

### **Questionnaires web**
- Le bouton "Besoin d'aide" en visualisation web est désactivé dans l'environnement Concevoir (pas pertinent). Il reste actif dans les environnements de Collecte où il joue pleinement son rôle.