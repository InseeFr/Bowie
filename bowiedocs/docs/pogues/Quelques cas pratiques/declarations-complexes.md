# Rédiger une déclaration mise en forme et conditionnée

Ce document propose quelques exemples de déclaration dans Pogues

!!! tip 

    On rappelle qu'en collecte web, seule deux déclarations (une au dessus et une au dessous de la question) sont affichées. Sur le poste enquêteur, plusieurs déclarations sont possibles.

## Principe

La déclaration peut être du texte simple, ou comprendre des variables calculées, collectées, externes.
Elle peut contenir des sauts de lignes, du gras, de l'italique

## Exemples 

> On souhaite afficher de l'italique (exemple : mot en anglais).

```
"Je suis une aide de séquence Web et CAPI, après la question, avec :
- de la mise en forme
- de l'*italique*
"
```

> On souhaite afficher du gras.

```
"Je suis une aide de séquence Web et CAPI, après la question, avec :
- du texte en **gras**
"
```

> On souhaite afficher plusieurs lignes, conditionnées :

```
(if ($MINEUR$ = "1") then ("Nous souhaitons interroger un(e) représentant(e) légal(e) de " || $PREN_IND$ || ". 
Le questionnaire portera sur les caractéristiques de ses déplacements personnels ou professionnels : durée, mode d'hébergement, dépenses, destination en France ou à l’étranger et dates.") 
else "Le questionnaire portera sur les caractéristiques de ses déplacements personnels ou professionnels : durée, mode d'hébergement, dépenses, destination en France ou à l’étranger et dates.")
|| "
 Vous pouvez aussi répondre au questionnaire si " || $IL_ELLE$ || " n’a pas voyagé."
```

ou encore :

```
"Rappel de la dépense 1 en € : " || nvl(cast($VAR1$,string),"///") || " 
Dépense 2  : " || nvl(cast($VAR2$,string),"///") || " 
Dépense 3 : " || nvl(cast($VAR3$,string),"///") || " 
Dépense 4 : " || nvl(cast($VAR4$,string),"///") ```

```

!!!note

    La déclaration n'a cependant pas vocation à être trop complexe car trop longue, elle pourrait ne pas être lue par l'enquêté.
 

## Questionnaire exemple

A venir
