---
date: 2026-06-09
categories:
  - Bowie
authors: 
    - bowie_team
---

# 🚀 Bowie 1.28.0 

🌟 Il est maintenant possible d'importer une liste de codes depuis un csv. Cette action se fait via le bouton Importer une liste de codes dans la page de création/modification.

🐞 Dans un questionnaire principal, je peux de nouveau créer une variable avec une portée d'une boucle ou d'un tableau dynamique défini dans un questionnaire qui le compose. Par exemple avec un questionnaire parent qui importe un module TCM_THL, on a bien la possibilité de créer une variable externe ou calculée avec la portée `BOUCLE_PRENOMS`.
Les noms des boucles et tableaux dynamiques dans la page de variable sont correctement affichés au lieu des identifiants.

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
        <td>3.1.0 & 1.15.0 ➡️ 3.2.4 & 1.15.0 </td>
        <td></td>
    </tr>
        <tr>
        <td>Pogues-Back-Office </td>
        <td>4.26.7 ➡️ 4.33.0</td>
        <td></td>
    </tr>
     <tr>
        <th colspan="3">Génération de questionnaires</th>
    </tr>
    <tr>
        <td>Java (Eno WS-Java) </td>
        <td>3.64.2  ➡️ 3.64.4 </td>
        <td></td>
    </tr>
        <tr>
        <td>Xml (Eno WS-Xml)</td>
        <td>2.27.1 ➡️ 2.29.3</td>
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
        <td>3.3.1 ➡️ 3.3.2 </td>
        <td></td>
    </tr>
    <tr>
        <th colspan="3">Visualisation de questionnaires</th>
    </tr>
    <tr>
        <td>Questionnaires enquêteurs (Queen)</td>
        <td> 3.3.2  ➡️ 3.5.0 </td>
        <td> 3.13.4</td>
    </tr>
        <tr>
        <td>Questionnaires web (Stromae-dsfr)</td>
        <td> 2.7.0 ➡️2.8.0   </td>
        <td> 3.13.4 </td>
    </tr> 
            <tr>
        <td>API pour questionnaires web et enquêteurs</td>
        <td> 5.7.3 ➡️  5.8.3</td>
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

### **Conception de questionnaires**

- Dans un questionnaire principal, je peux de nouveau créer une variable avec une portée d'une boucle ou d'un tableau dynamique défini dans un questionnaire qui me compose. Exemple avec un questionnaire parent qui importe un module TCM_THL, on a bien la possibilité de créer une variable externe ou calculée avec la portée BOUCLE_PRENOMS.
Les noms des boucles et tableau dynamique dans la page de variable sont correctement affichés au lieu des identifiants.

- Une page de chargement est maintenant affichée lors des chargements entre différents menus de Pogues.

- Les variables collectées associées à un QCU ou QCM sont désormais décrites par défaut comme une variable texte de taille 249 caractères.


## 🌟 Fonctionnalités Utilisateurs


### **Pogues**
-  🌟 Le dossier zippé de métadonnées téléchargeable depuis Pogues a été complété avec un fichier json contenant la liste des nomenclatures au format attendu par Platine.
- Le modèle Pogues ne conserve plus les références aux nomenclatures qui ne sont associées à aucune question (question avec suggester supprimé, nomenclature mise à jour...).
- Le modèle Pogues déréférencé ne conserve plus dans l'attribut ChildQuestionnaireRef les références aux sous-questionnaires qui le composaient initialement.
- Suite à la suppression de la possibilité dans Pogues d'ajouter des demandes de clarification sur des QCU de type menu déroulant, un nettoyage automatique des modèles qui comporte cette association (QCU * demande de clarification) est mis en œuvre (transparent pour l'utilisateur de Pogues).
-  :star2:  Il est maintenant possible d'importer une liste de codes depuis un `csv`. Cette action se fait via le bouton `Importer une liste de codes` dans la page de création/modification.   

<img width="818" height="268" alt="image" src="https://github.com/user-attachments/assets/6557ed4f-0f23-43c5-8592-4c2adeb28caa" />

L'import du fichier csv complète la saisie interactive dans Pogues : il est possible de combiner les deux modes d'ajout de codes.

⚠️ Quand on importe des doublons (première colonne avec des valeurs en double) c'est la valeur la plus récente (la dernière valeur lue du fichier) qui est prise en compte. Donc bien vérifier l'intégrité des éléments importés avant de valider. Si jamais la dernière version validé est erronée, il est toujours possible de récupérer l'état précédant de la liste de codes en restaurant la version précédente via le menu `Historique`.

Plus d'informations [ici](https://inseefr.github.io/Bowie/1._Pogues/%F0%9F%9A%80_Guide/14-liste-codes/#importer-une-liste-de-codes-au-format-csv).

### **Questionnaires web et enquêteur**
- Pour utiliser directement l'url de visualisation questionnaires web ou enquêteur, il faut préalablement être connecté. Si vous n'êtes pas connectés, vous serez redirigés vers une page de Proconnect.
- Désormais pour créer une visualisation depuis l'url dédiée, les champs Source, datas, nomenclatures etc doivent provenir des domaines *insee.fr* et *sspcloud.fr* (minio). **Pour rappel, on vous invite à privilégier la personnalisation depuis Pogues pour recetter vos questionnaires.**
