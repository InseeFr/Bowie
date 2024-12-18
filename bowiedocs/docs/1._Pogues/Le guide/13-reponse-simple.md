# Les questions de type Réponse simple

Pour créer une question de type **Réponse simple**, remplir, pour toutes les variables :

- le caractère _Obligatoire_ de la réponse (en 2024, l'information n'a pas d'effet sur l'affichage de la question au sein du questionnaire).
- le _type de réponse_ (Texte, Date, Nombre, Booléen, Durée)

## Type de réponse Texte
Renseigner aussi : 

- la _longueur maximale_ de la réponse (nombre de caractères)
- le _motif_ (non fonctionnel pour l'instant, il permettra de spécifier des expressions régulières comme un Siret, un mèl etc.)

## Type de réponse Date
Renseigner aussi :

- le _format_ parmi AAAA-MM-JJ, AAAA-MM et AAAA 
- un _minimum_ et un _maximum_

## Type de réponse Nombre
Renseigner aussi :

- le _minimum_ et le _maximum_ 
- la _précision_ (nombre de chiffres après la virgule, par défaut : aucun)
- l'_unité_ de mesure fixe ou personnalisée

??? example "Example d'utilisation d'une unité de mesure personnalisée"
    ___Choix de l'unité de mesure___
    ![choix unite de mesure perso](../../img/pogues/choix-unite-de-mesure-perso.png)
    ___Exemple d'une expression VTL pour l'unité de mesure. `(if $DEST$ = "1" then "Dirhams" else "Euros")`___
    ![unite mesure perso](../../img/pogues/unite-mesure-perso.png)
    ___Si on choisi "Espagne" (`DEST=2`) alors on tombe dans le `else` et l'unité mesurée est "Euros"___
    ![unite mesure perso euro](../../img/pogues/unite-mesure-perso-euro.png)
    ___Si on choisi "Maroc" (`DEST=1`) alors on tombe dans la condition du `if` et l'unité mesurée est "Dirham"___
    ![unite mesure perso dirham](../../img/pogues/unite-mesure-perso-dirhams.png)

## Type de réponse Booleen
On ne renseigne rien (unique cache à cocher cochable/décochable).
  
## Type de réponse Durée
Renseigner aussi le _format_ parmi heures-minutes ou années-mois.
