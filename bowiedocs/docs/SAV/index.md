# Problèmes les plus fréquents

## **Souci de génération : à la visualisation depuis Pogues, un message "Une erreur a été rencontrée"**
 
Tenter de générer le questionnaire séquence par séquence

- si une séquence pose souci, descendre  sous-séquence par sous-séquence, voire question par question et identifier la question qui pose souci. 
- si toutes les séquences se génèrent, il y a probablement un problème de boucles ou de doublons. En effet, des listes (dans les QCM ou QCU) peuvent avoir le même nom, notamment pour les questionnaires qui font appel à la composition. 
        
## **Affichage à tort de questions filtrées**
Principe général : si un filtre ne se valorise pas ou pas bien, la question est affichée donc si la question s'affiche "à tort", le filtre est probablement faux.

Contrôler le filtre :

  - vérifier que les autres variables dans le même filtre sont également affichées  
  - ajouter des déclarations contenant les variables impliquées dans le filtre afin de contrôler leurs valeurs


## **(Non)Affichage des déclarations**
Les déclarations s'affichent en fonction des modes décrits dans Pogues : pas de mode, pas d'affichage et réciproquement si pas d'affichage, il manque probablement le mode

## **VTL avec opérations d’agrégation**
Dans le cas où l'on veut définir une expression VTL **faisant des opérations sur les éléments d'une variable vecteur**, hors d'un tableau ou d'une boucle (à un niveau questionnaire), il faut passer par une variable calculée, sinon **le VTL est en erreur** 

??? example "Exemple avec un contrôle"
    Prenons une variable `SALAIRE` qui est collecté dans une boucle de 4 occurrences. <br>
    À la fin de la boucle, on a : `SALAIRE=[2500, 1300, 2000, 4000]`.<br>
    Si on veut faire un contrôle sur la somme des salaires, il faut d'abord **créer une variable calculée** `SUM_SALAIRE=sum($SALAIRE$)` de niveau questionnaire, puis définir un contrôle avec cette dernière.
    
    Expression VTL du contrôle | Affichage du contrôle
    -- | --
    `sum($SALAIRE$) > 5000` | :x:
     `$SUM_SALAIRE$ > 5000`  | :white_check_mark:

