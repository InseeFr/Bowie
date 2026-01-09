# Les variables calculées ✨

## Création d'une variable calculée

✨ On crée les variables calculées via le menu "Variables" en cliquant sur le bouton en haut à droite "Créer une variable". 

!!! abstract "Nouvelle variable calculée"
    ![alt text](../../../img/pogues/var-creation-calculated.png)

    1. `Type de variable*` : permet de sélectionner le type de variable souhaité : calculée ou externe
    1. `Identifiant*` : correspond au nom de la variable
	
	!!! note "Note"
			L'outil impose la norme de nommage SCREAMING_SNAKE_CASE : uniquement des caractères alphanumériques et des "_".
	
    1. `Libellé*` : description de la variable
    1. `Formule*` : Éditeur VTL permettant de définir la formule VTL de calcul de la variable
		- Exemples : Nombre total de personne dans le ménage interrogé ; somme des pourcentages du chiffre d'affaires dédiés à certaines activités ou nombre de majeurs d'un ménage
    1. `Niveau de calcul*` : correspond à la portée de la variable. Plus de détails [ici](https://inseefr.github.io/Bowie/1._Pogues/%F0%9F%9A%80_Guide/Variables/portee/)
		
		!!! note "Note"
			Par défaut il faut laisser `Questionnaire` comme niveau de calcul si la variable vaut la même valeur sur l’ensemble du questionnaire. Si la variable est occurrentielle (cad, sa valeur dépend de la ligne sur laquelle on se trouve au sein d’un tableau dynamique ou de l’occurrence sur laquelle on se trouve au sein d’une boucle), on renseigne ici l'élément itérable (identifiant du tableau dynamique ou boucle du questionnaire) auquel se réfère la variable.

    1. `Type de réponse*` : parmi Texte, Date, Nombre, Booléen (cf. Création d'une question de type réponse simple)
      > Suivant la valeur sélectionnée, d'autres champs associés au type apparaissent.
      > Plus de détails sur les différents types [ici](../../🚀_Guide/Questions/13-reponse-simple.md)
