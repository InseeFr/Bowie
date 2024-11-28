# Collecte par libellés flous

Lors de la collecte de la profession d'un enquêté, la première réponse se fait traditionnellement à travers une liste fournie de dénominations (et par le truchement d'une recherche sur liste avec autocomplétion). Il peut cependant arriver que le répondant ne trouve pas de libellés qui le satisfasse. Dans ce cas on lui proposera en deuxième intention un champ de réponse libre. Dans ce cas de figure on peut chercher à identifier ce que l'on appelle des _libellés flous_ c'est-à-dire pour lesquels on va demander de préciser la réponse.

Le schéma de questionnement est donc le suivant :

```vtl
- La question initiale (liste simple ou suggester)
- La question avec réponse sur champ libre
  - Filtrée sur la non réponse à la question initiale
  - Normalisation du libellé en clair
- L'identification d'un libellé flou
- La question de précision
  - Filtrée sur l'appartenance du libellé en clair à la liste des libellés flous
```

## Mode opératoire

On commence donc par créer la question initiale, avec un type de réponse à choix unique ou via une recherche sur liste (:warning: pas encore directement implémenté dans Pogues). La variable issue de cette réponse sera nommée `PROFESSION`.

Pour pouvoir proposer une deuxième question proposant un champ texte libre et une variable de collecte `PROFESSION_EN_CLAIR`. Cette question sera filtrée par l'expression :

`isnull($PROFESSION$)`

Avant de pouvoir mobiliser cette réponse, nous allons la normaliser pour coller à la liste existante des libellés flous. Cette normalisation :

- transforme les caractères en minuscules
- supprime les espaces (`" "`)
- remplace des caractères accentués en caractères non accentués (par exemple un `à` en `a`)
- enfin passe en majuscules le libellé obtenu par ces transformations

Le code VTL sera :

```vtl
upper(
    replace(
        replace(
            replace(
                replace(
                    replace(
                        replace(lower($PROFESSION_EN_CLAIR$), " ", "")
                        , "à", "a")
                    , "ç", "c")
                , "é", "e")
            , "è", "e")
        , "ê", "e")
        )
```

> Vous trouverez plus bas, une explication détaillé du code.

On crée ensuite une troisième question demandant des précisions sur le libellé entré en clair si celui-ci est dans la liste des libellés flous. Pour cela, on crée un filtre sur cette troisième question qui s'appuie sur la variable `PROFESSION_EN_CLAIR_DANS_LIBELLES_FLOUS` dont le code sera :

```vtl
$PROFESSION_EN_CLAIR$ in {"ACCOMPAGNATEUR",
"ACCOMPAGNATRICE",
"ACHETEUR",
"ACHETEUSE",
"ACTIVITESAISONNIERE",
"ADJOINT",
"ADJOINTADMINISTRATIF",
"ADJOINTADMINISTRATIFPRINCIPAL",
"ADJOINTADMINISTRATIFTERRITORIAL",
"ADJOINTTECHNIQUE",
"ADJOINTTECHNIQUEALACOMMUNE", 
[...]
}
```

La liste même des libellés est à obtenir par ailleurs.

## Détail du code de transformation du libellé en clair

- `lower($PROFESSION_EN_CLAIR$)` : `PROFESSION_EN_CLAIR` est entièrement mis en minuscule
–> ex: “IntérmittÊnt du spèctàçle” devient “intérmittênt du spèctàçle”

- `replace([...], " ", "")` : On retire tous les espaces du libellé en minuscule (y.c. ceux “légitimes” entre les mots)
–> ex: “intérmittênt du spèctàçle” devient “intérmittêntduspèctàçle”

- `replace([...], "à", "a")` : On remplace - dans le libellé en minuscule, sans espace - tous les à en a, tous les ç en c, tous les éèê en e.
–> ex: “intérmittêntduspèctàçle” devient “intérmittêntduspèctaçle”
puis “intérmittêntduspèctacle”
puis “intermittêntduspèctacle”
puis “intermittêntduspectacle”
puis “intermittentduspectacle”

- `upper([...])` : Le libellé normalisé en minuscule est repassé entièrement en majuscules
–> ex: “intermittentduspectacle” devient “INTERMITTENTDUSPECTACLE”
