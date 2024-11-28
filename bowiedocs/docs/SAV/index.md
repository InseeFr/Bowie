# Problèmes les plus fréquents

## Souci de génération : à la visualisation depuis Pogues, un message "Une erreur a été rencontrée" 
 
 Tenter de générer le questionnaire séquence par séquence
- si une séquence pose souci, descendre  sous-séquence par sous-séquence, voire question par question et identifier la question qui pose souci. 
- si toutes les séquences se génèrent, il y a probablement un problème de boucles ou de doublons. En effet, des listes (dans les QCM ou QCU) peuvent avoir le même nom, notamment pour les questionnaires qui font appel à la composition. 
        
## Affichage à tort de questions filtrées
Principe général : si un filtre ne se valorise pas ou pas bien, la question est affichée donc si la question s'affiche "à tort", le filtre est probablement faux.

Contrôler le filtre
- vérifier que les autres variables dans le même filtre sont également affichées  
- ajouter des déclarations contenant les variables impliquées dans le filtre afin de contrôler leurs valeurs


### (Non)Affichage des déclarations 
Les déclarations s'affichent en fonction des modes décrits dans Pogues : pas de mode, pas d'affichage et réciproquement si pas d'affichage, il manque probablement le mode
