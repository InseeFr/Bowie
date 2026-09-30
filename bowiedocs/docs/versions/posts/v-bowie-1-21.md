---
date: 2025-08-20
categories:
  - Bowie
authors: 
    - bowie_team
---

# 🚀 Bowie 1.21.0 

Plein de nouvelles fonctionnalités ✨

- 🌟 Pogues propose une nouvelle page **"Variables"** qui permet d'afficher en lecture seule toutes les variables du questionnaire avec un classement par portée (niveau de calcul pour les boucles et les tableaux) des variables.

- 🌟 La **personnalisation** se fait maintenant depuis la nouvelle interface, via le menu "Personnalisation". On retrouve la possibilité de sélectionner le contexte (Ménage ou Entreprise), le(s) mode(s) de collecte, les variables externes uniquement sous le format csv (comme avant dans Public Enemy), ou les variables externes et des variables collectées pré-remplies (nouveau) sous le format json.

- ⭐ On peut désormais, pour une boucle principale en contexte **Web Ménage**, définir l'affichage des questions avec **une occurrence par page**.  
Ça permet par exemple de regrouper les questions sur l'identité d'une personne (Prénom, Age, Sexe, etc) sur la même page pour chaque individu.  

- ⭐ Pour les questionnaires ménages d'enquêtes en panel, **le temps de latence entre chaque changement de page du questionnaire est réduit** y compris pour les logements avec un grand nombre d'habitants en réinterrogation.


<!-- more -->

| Application              |             Version              |
| ------------------------ |:--------------------------------:|
| Pogues                   | 2.0.0 & 1.10.0 ➡️ 2.1.1 & 1.11.1 |
| Pogues-Back-Office       |        4.18.1 ➡️   4.21.3        |
| Eno-WS Java              |         3.54.0 ➡️ 3.55.0         |
| Eno-WS Xml               |        2.11.2 ➡️  2.13.2         |
| Public-Enemy             |         2.2.1 ➡️ **DEPRECATED** |
| Public-Enemy-Back-Office |         2.4.2 ➡️   3.1.2         |
| Queen                    |         2.5.5 ➡️  2.5.8          |
| Stromae DSFR             |         1.4.7 ➡️   1.5.1         |
| Stromae V1 (Orbeon)      |              5.0.3               |
| Stromae-db V1            |              2.1.3               |
| Questionnaire-API        |          4.8.8 ➡️ 5.2.1          |

| Library                |     Version     |
| ---------------------- |:---------------:|
| Lunatic - Queen        | 3.6.8 ➡️ 3.6.14 |
| Lunatic - Stromae DSFR | 3.6.8 ➡️ 3.6.13 |


________________________________________________________________________________________________________________________________________
## 🐞 Corrections de Bugs


### **Lunatic, Queen, Stromae-dsfr**
- La condition d'exclusion du rond-point ("sauf") est appliquée quel que soit le nombre d'occurrences du rond-point et quel que soit l'orchestrateur. Le bug qui permettait d'afficher à tort les questions de l'occurrence exclue quand il n'y a qu'une seule occurrence est résolu.
- Quand on utilise une OptionResponse (par exemple un libellé d'une nomenclature dans une variable calculée avec un `left_join()`) dans un suggester d'un tableau dynamique, il y avait un mauvais resizing/cleaning : la suppression d'une ligne ne se faisait pas complètement et donc en rajoutant la ligne juste supprimée, la valeur existait déjà et était réaffichée. Le bug est résolu.

### **Lunatic, Queen**
- On peut saisir des nombres dans le champ de clarification d'un QCU ou QCM tant que le focus est dans le champ du texte sans changer la valeur de la modalité sélectionnée.

### **Pogues**
- La modification d'une liste de codes va bien mettre à jour la date de dernière modification du questionnaire
- Dans Pogues, pour les tableaux **statiques** (liste de codes en ordonnées), il n'est plus possible de spécifier des cases en lecture seule (fonctionnel uniquement disponible pour les tableaux dynamiques dans la suite des outils).

## :star2: Fonctionnalités Utilisateurs

### **Lunatic, Queen, Stromae-dsfr**
- :star: Pour les questionnaires ménages d'enquêtes en panel, **le temps de latence entre chaque changement de page du questionnaire est réduit** y compris pour les logements avec un grand nombre d'habitants en réinterrogation.
- Harmonisation du visuel des infobulles pour toutes les déclarations (séquence, sous-séquence, question). Ces dernières sont maintenant soulignées en pointillé, avec une couleur différente du texte et accessibles (symbole (i) à la fin du texte).

### **Pogues**
- :star2: Pogues propose une nouvelle page **"Variables"** qui permet d'afficher en lecture seule toutes les variables du questionnaire avec un classement par portée (niveau de calcul pour les boucles et les tableaux) des variables.
    - Une documentation plus détaillée est disponible [📚 ici](../../1._Pogues/Guide/c._Variables/index.md)
- :star2: La **personnalisation** se fait maintenant depuis la nouvelle interface, via le menu "Personnalisation". On retrouve la possibilité de sélectionner le contexte (Ménage ou Entreprise), le(s) mode(s) de collecte, les variables externes uniquement sous le format csv (comme avant dans Public Enemy), ou les variables externes et des variables collectées pré-remplies (nouveau) sous le format json. 
    - Dans le cas du format csv, on peut récupérer le format attendu. 
    - Pour le json, il suffit de télécharger un fichier de donnée durant une visualisation pour avoir le bon format json. 
Si le chargement du fichier ne s'est pas bien terminé, un message apparait et explique pourquoi (fichier invalide, incohérence dans les variables, etc). Si tout est bon, on peut valider et ainsi accéder aux Unités Enquêtées ainsi créées et les visualiser.
    - Une documentation plus détaillée est disponible [📚 ici](../../1._Pogues/Guide/d._Personnalisation/index.md)
- :star: On peut désormais, pour une boucle principale en contexte **Web Ménage**, définir l'affichage des questions avec une occurrence par page.
Ça permet par exemple de regrouper les questions sur l'identité d'une personne (Prénom, Age, Sexe, etc) sur la même page pour chaque individu. 
    - une documentation plus détaillée est disponible [📚 ici](../../1._Pogues/Guide/a._Questionnaire/24-boucles.md#affichage-des-occurrences)
- Navigation dans Pogues
    - Il est maintenant possible de se déconnecter via un bouton en haut à droite, icône avec ses initiales. une fois déconnecté, on ne peut accéder aux autres pages de l'application. On est redirigé automatiquement vers la page de connexion. Une fois connecté, on a accès au reste de l'application.
    - Un nouveau bouton de retour à l'accueil a été ajouté dans le bandeau latéral gauche. Il est toujours accessible, que l'on soit sur la page des listes de codes, des nomenclatures, du questionnaire...
![](https://codimd.dev.kube.insee.fr/uploads/upload_9f45a074e420b7efb8c3e7b73c65e9e1.png)
Le bouton de retour à l'accueil qui se trouvait avec l'arborescence des séquences a été supprimé (obsolète).
    - Quand on veut restaurer un questionnaire, le bandeau contenant les composants Question, Séquence, Visualiser etc n'est plus en sur-brillance et tous les boutons en arrière-plan sont inactifs. Si on clique ailleurs que dans la modale de confirmation de la demande de restauration, la demande est annulée.

### **Lunatic, Queen**
- Le raccourci Alt + Entrée fonctionne désormais sur les suggesters (nomenclatures).

### **Queen**
- Le focus par défaut sur la première tuile du rond-point en collecte enquêteur est maintenant plus discrète, un simple contour bleu

### **Eno**
- Les courriers qui seront ajoutés aux questionnaires en cas d'envoi papier ont été rendus cohérents avec les courriers envoyés sans questionnaire
- On peut désormais faire en sorte que les parties filtrées par des données externes (formules VTL basées uniquement sur des données externes) soient traduites sur le papier par un vrai filtre, valorisable par le module courrier, à l'image de ce qui est fait pour les courriers qui accompagnent les questionnaires.
