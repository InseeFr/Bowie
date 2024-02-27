# Sélection du Kish

Ce document décrit une méthode pour sélectionner le Kish dans Pogues.

!!! tip "Mise à jour du 19/01/2024"

    Une nouvelle version de ce guide de sélection d'individu qui inclut un aléa basé sur le prénom du répondant afin de distinguer les personnes nées les mêmes jour et mois.

## Principe

On considère que l'on procède à l'identification du Kish à travers les étapes suivantes :

- on demande le nombre d'habitants du ménage
- on boucle sur ce nombre pour collecter les prénoms et les dates de naissance de chacun des membres du ménage
- une dernière boucle va permettre de filtrer le questionnement sur le seul Kish

## Structure du questionnaire

### Séquence d'identification

> On construit une séquence contenant les questions permettant d'identifier le Kish contenant la question du nombre d'habitants et la sous-séquence d'identification.

On crée une séquence contenant une première question pour collecter le nombre d'habitants (variable numérique collectée `NBHAB`).

On crée ensuite dans cette même séquence une sous-séquence `IDENTIFICATION` contenant :

- une question pour collecter le prénom de chaque habitant (variable texte collectée `PRENOM`).
- une question pour collecter la date de naissance (variable date `DATE_DE_NAISANCE`)

Il faut ensuite créer une boucle `BOUCLE_PRENOMS` sur cette sous-séquence avec la formule `cast($NBHAB$, integer)` pour le minimum et le maximum.

### Séquence de questions

> On crée la séquence de questionnement

Une séquence contenant une question `QUESTION_POUR_LE_KISH`, dont le libellé est personnalisé avec le prénom (via la formule VTL `"Question pour " || cast($PRENOM$, string)`).

On crée la boucle `BOUCLE_QUESTION_KISH` basée sur `BOUCLE_PRENOMS` qui englobe la séquence de questions pour le Kish.

## Calcul du Kish

> Les éléments permettant de procéder au calcul lui-même

Le coeur de la sélection est la formule permettant de former un score de sélection :

`cast(if $MOIS_NAISSANCE_INT$ < 6 then $MOIS_NAISSANCE_INT$ + 12 else $MOIS_NAISSANCE_INT$, string) || "." || $JOUR_NAISSANCE_STR$`

Elle donnera par exemple :

- pour la date de naissance `01/06/2000` le score `6.01`
- pour `10/05/1990` le score `17.10`

:octicons-report-16: On ajoute à ce premier score un aléa tiré à partir de la position de certaines lettres dans le prénom, voir les formules ci-dessous des variables `ALEA_PRENOM` et `SCORE_KISH_INT_ALEA_PRENOM`. Cela permet de traiter le cas de personnes nées les mêmes jour et mois.

!!!note

    La formule donnée plus bas pour la création de l'aléa peut être adaptée, amendée pour améliorer la production d'un aléa. Cependant, il faut veiller à rester parcimonieux pour ne pas créer un code difficile à maintenir.

    Par ailleurs, on introduira dans le courant du S1 2024 une fonction VTL pour générer de l'aléa, elle pourra remplacer une formule complexe dans ce contexte.

On sélectionne ensuite l'individu dont le score est le plus bas.

Les variables calculées nécessaires sont :

| Variable           | Portée         | VTL                                                                                |
|--------------------|----------------|------------------------------------------------------------------------------------|
| MOIS_NAISSANCE_INT | BOUCLE_PRENOMS | `cast(cast(cast($DATE_DE_NAISSANCE$, date, "YYYY-MM-DD"), string, "MM"), integer)` |
| JOUR_NAISSANCE_STR | BOUCLE_PRENOMS | `cast(cast($DATE_DE_NAISSANCE$, date, "YYYY-MM-DD"),string, "DD")`                 |
| SCORE_KISH         | BOUCLE_PRENOMS | `cast(if $MOIS_NAISSANCE_INT$ < 6 then $MOIS_NAISSANCE_INT$ + 12 else $MOIS_NAISSANCE_INT$, string) || "." || $JOUR_NAISSANCE_STR$`   |
| SCORE_KISH_INT     | BOUCLE_PRENOMS | `cast($SCORE_KISH$, number)`                                                       |
| ALEA_PRENOM           | BOUCLE_PRENOMS  | `instr(lower(PRENOM), "e") + instr(lower(PRENOM), "a") + instr(lower(PRENOM), "i") + instr(lower(PRENOM), "s") + instr(lower(PRENOM), "n") + instr(lower(PRENOM), "r") + instr(lower(PRENOM), "t") + instr(lower(PRENOM), "o")`     |
| SCORE_KISH_INT_ALEA_PRENOM           | BOUCLE_PRENOMS  | `$SCORE_KISH_INT$ + $ALEA_PRENOM$ / 100`                        |
| KISH_MIN           | Questionnaire  | `min($SCORE_KISH_INT_ALEA_PRENOM$)`                                                            |
| KISH_INDICATOR     | BOUCLE_PRENOMS | `if $KISH_MIN$ = $SCORE_KISH_INT_ALEA_PRENOM$ then 1 else 0`                                   |
| NB_POTENTIAL_KISH  | Questionnaire  | `sum($KISH_INDICATOR$)`                                                            |

## Filtre

Pour ne présenter qu'un seul jeu de questions à l'individu sélectionné, il est nécessaire d'ajouter un filtre sur ces questions à partir du score calculé en amont.

Le filtre a pour formule `$KISH_INDICATOR$ = 1`.

## Questionnaire exemple

Pour référence, [un questionnaire implémentant cette solution](https://pogues.demo.insee.io/questionnaire/l8lfytfu).
