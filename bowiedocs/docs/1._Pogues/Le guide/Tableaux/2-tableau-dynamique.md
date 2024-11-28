# Les tableaux dynamiques

On peut vouloir créer des tableaux dont on ne connait pas à l'avance le nombre de lignes (Tableau dynamique). Ces tableaux se présenteront : 

- sans en-tête de lignes en première colonne
- avec un bouton _Ajouter une ligne_ (sous le tableau)
- et un bouton _Supprimer une ligne_ (la dernière).

Pour ce faire, on créera une question de type Tableau avec pour axe principal une liste.

__Choix de l'axe d'information principal__ :  

- choisir Liste
- indiquer le nombre de lignes minimum (aujourd'hui un nombre mais une évolution permettra à terme de saisir un champ VTL)
- indiquer le nombre de lignes maximum (aujourd'hui un nombre borné à 300 mais une évolution permettra à terme de saisir un champ VTL)).

__Information(s) mesurée(s)__ : renseigner une information de type _Réponse simple_ ou _Réponse à choix unique_
Si on souhaite qu'une de ces informations mesurées ne soit pas "collectée", voir l'item [données non-collectées](https://inseefr.github.io/Bowie/pogues/Le%20guide/Tableaux/3-cases-non-collectees)

Valider

## Calculer des totaux de lignes ou de colonnes

Ces totaux peuvent être ensuite utilisées dans deslibellés, des filtres ou des contrôles

- cf. [Total en ligne](https://inseefr.github.io/Bowie/pogues/Le%20guide/Tableaux/3-cases-non-collectees/#total-en-ligne)
- cf. [Total en colonne](https://inseefr.github.io/Bowie/pogues/Le%20guide/Tableaux/3-cases-non-collectees/#total-en-colonne)

## Contrôles

Dans l'onglet Contrôles, décrire classiquement le contrôle en VTL mais préciser son niveau : si le contrôle concerne les informations relatives à une ligne du tableau, préciser "Niveau : ligne"

![Contrôles par ligne](../../../img/pogues/controle-tab-dynamique.png)


## Préremplir un tableau avec des données non collectées

Pogues permet de préremplir certaines __colonnes__ des tableaux dynamiques, que ce soit par de la donnée externe ou par des variables calculées. Ces __colonnes__ ne sont alors pas modifiables en collecte.

[Spécifier des données non-collectées](https://inseefr.github.io/Bowie/pogues/Le%20guide/Tableaux/3-cases-non-collectees)


## Supprimer une ligne qui n'est pas la dernière

Impossible. 
