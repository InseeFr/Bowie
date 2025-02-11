# Les filtres

Un filtre est un élément permettant d'afficher ou masquer une partie du questionnaire en fonction d'une expression VTL.

Pour créer un filtre, il suffit de cliquer sur le bouton "+ Filtre" dans la barre d'action. La fenêtre modale qui s'ouvre affiche les champs :

- _Description_ : un libellé qui sera visible sur le questionnaire papier et remplacera le filtre dynamique des questionnaires web ou enquêteur
- _Condition d'affichage_ : l'expression VTL qui si elle est __vraie__ déclenche l'affichage des éléments filtrés
- _Début_ : détermine où commence la couverture du filtre
- _Fin_ : détermine où termine la couverture du filtre.

## Contraintes d'usage :warning

1/ Concerne les éléments de début et de fin du filtre : ceux-ci doivent être de même nature. Par exemple, si un filtre débute sur une séquence, il doit finir sur une séquence (la même ou une séquence se situant plus loin dans le questionnaire).

2/ Ne pas construire des filtres qui se chevauchent - comme illustré plus bas.

!!! note
    Ces erreurs ne sont malheureusement pas captées lors de la conception dans Pogues, mais le seront lors de la génération et la visualisation.

!!! traduction des filtres sur le questionnaire papier
    Sur le questionnaire papier figure le champ _Description_ : pas de description, pas de libellé de filtre.

=== "Filtres corrects"
    ![Filtres OK](../../img/pogues/guide-filtres-ok.png)
=== "Filtres incorrects"
    ![Filtres KO](../../img/pogues/guide-filtres-ko.png)

!!! warning "Cohérence avec les contrôles"
    Si on filtre une question avec un contrôle, il faut rajouter la condition du filtre dans le contrôle pour que ce dernier ne se déclenche pas quand la question n'est pas affiché