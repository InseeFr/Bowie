---
date: 2026-01-20
categories:
  - Bowie
authors: 
    - bowie_team
---

# 🚀 Bowie 1.24.0 


🌟 Gestion des variables  
On peut créer les variables externes et calculées depuis l'onglet "Variables" de Pogues dans une page dédiée.

🌟 Améliorations de la recherche sur liste pour les questions à choix unique  

<!-- more -->

| Application              |              Version              |
| ------------------------ |:---------------------------------:|
| Pogues                   | 2.2.0 & 1.12.0   ➡️ 2.3.0 & 1.13.0 |
| Pogues-Back-Office       |         4.25.0          |
| Eno-WS Java              |         3.59.0          |
| Eno-WS Xml               |         2.24.2 ➡️  2.26.0         |
| RedHot (Lunatic Pdf API)          |               1.2.0    ➡️  1.5.2            |
| Public-Enemy-Back-Office |               3.2.1               | 
| Queen                    |         3.1.9          |
| Stromae DSFR             |            2.3.1 ➡️  2.3.5          |
| Stromae V1 (Orbeon)      |               5.0.3               |
| Stromae-db V1            |       2.1.4           |
| Questionnaire-API        |               5.4.0               |
| Walking papers (orchestrateur de saisie papier)          |               1.0.0               |

| Library                   | Version |
| ------------------------- |:-------:|
| Lunatic - Queen           |  3.7.3  |
| Lunatic - Stromae DSFR    |  3.7.6  |
| Lunatic - Lunatic Pdf API |  3.7.2  | 
| Lunatic - Walking papers  |  3.6.9 |



________________________________________________________________________________________________________________________________________
## 🐞 Corrections de Bugs

### **Drama-Queen**
- Le bug d'accès aux questionnaires enquêteurs via Sabiane est résolu.

## :star2: Fonctionnalités Utilisateurs

### **Pogues**
- ⭐ Gestion des variables
    - On peut créer les variables **externes** et **calculées** depuis l'onglet "Variables" de Pogues dans une page dédiée (les onglets correspondants ont été supprimés de la fenêtre "Détail des variables"). Afin de faciliter le travail de conception, le nom de variables que l'on crée via l'onglet "Variables" ne peut pas comporter de caractères spéciaux autres que "_".
    - La documentation est prête [📚 ici](../../1._Pogues/Guide/c._Variables/index.md) ainsi qu'une démonstration [🎥 ici](https://intranet.insee.fr/jcms/61481957_DBWikiPage/fr/-concevoir-pogues-les-communications-de-l-equipe-de-la-filiere-d-enquete).
    - Dans la page principale "Variables", les tableaux dynamiques sont désignés par leur identifiant métier (nom de la question tel que spécifié par le concepteur) et plus par l'identifiant technique pour faciliter l'utilisation.
- Nomenclatures
    - La nomenclature des communes 2025 a été corrigée suite à un défaut sur les identifiants. Pensez à valider de nouveau les questions utilisant cette nomenclature afin d'embarquer la nouvelle version.
    - Les listes de nomenclature EAP2025 Négoce, Autres activités, Electricité, Vente de produits industriels ont été mises à jour.  
    - La liste des nationalités étrangères a été ajoutée à Pogues. Les codes utilisés sont identiques à ceux de la liste des nationalités hors France.  
    - Les listes Produits laitiers et Spécialités non formelles ont été créées.
- Améliorations de la recherche sur liste pour les questions à choix unique
    - Pour les questions de type QCU avec recherche sur liste (usage d'un suggester), les caractères spéciaux "æ" et "œ" sont ne plus ignorés par l'algorithme de recherche, ils sont équivalents à respectivement "ae" et "oe". Par exemple, la recherche du terme "œuvre" et désormais équivalente à la recherche du terme "oeuvre". Cela facilite la recherche pour les personnes qui utilisent un smartphone ou une tablette avec correction automatique.  
    - La liste des échos à l'issue de la recherche est triée par score (pertinence par rapport à la requête recherchée) puis par ordre alphanumérique pour avoir une présentation plus intuitive des résultats. Par exemple, si on cherche dans la nomenclature des diplômes le terme "bac", les entrées sont présentées par score de pertinence décroissant et les entrées ayant le même score sont triées par ordre alphanumérique.  
    - Le tiret "-" n'est plus ignoré par l'algorithme de recherche. On trouve plus efficacement des termes tels que hi-fi, e-commerce, auto-école... 
    !!! warning "Attention"
        Il n'est possible de bénéficier des améliorations de la recherche sur liste que pour des questionnaires créés après déploiements des développement en production Pogues ou sur des questionnaires pour lesquels les nomenclatures sont utilisés pour la première fois.

### **Queen**
- le texte d'instruction qui apparaît dans le menu déroulant d'une question QCU/menu déroulant ou d'un lien deux à deux est "Sélectionnez une modalité" au lieu de "Commencez votre saisie".

### **Walking papers (orchestrateur de saisie papier)**
- Les données saisies dans l'orchestrateur de saisie papier sont correctement enregistrées.

### **Pogues, Eno**
- Lors de la création d'une variable externe, il est désormais possible de spécifier un attribut "Variable réinitialisable". Dans le cadre de la collecte concurrentielle, il peut arriver que l'enquêteur reprenne la main sur un questionnaire web et ait besoin de "supprimer" les réponses web : on offrira donc à l'enquêteur, dans Sabiane, la possibilité de remettre les données du questionnaire à vide.


### **Stromae**
- En collecte web, quand on est sur la page d'accueil d'un questionnaire, le titre de la page est titre du questionnaire + "- Accueil" afin de répondre aux normes d'accessibilité numérique.
- En collecte web, les repères de saisie sont restitués via l’attribut aria-describedby, afin qu’il complète le nom accessible sans lui faire concurrence et puisse être restitué de façon satisfaisante (normes d'accessibilité numérique)

### **RedHot (Lunatic-pdf-api)**
- L'api des données saisies (lunatic-pdf-api)  est correctement alimentée afin de permettre de générer un récapitulatif des données SAISIES (et non pas reprises/éditées) par un enquêté afin de communiquer avec lui en cas d'incohérences dans sa réponse.  L'accès depuis Platine gestion est déjà disponible.
- Les tableaux avec un nombre de colonnes raisonnable se visualisent sans chevauchement de texte, peu importe le nombre de lignes et la taille des libellés.