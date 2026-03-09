# Insertion d'une infobulle


## Syntaxe
L'ajout d'une [infobulle](https://fr.wikipedia.org/wiki/Infobulle) est possible dans les libellés des questions en appliquant une syntaxe particulière :

```md
Le texte de ma question contenant [une infobulle](. "Contenu de l'infobulle.").
```

Le positionnement des simples et doubles quotes, ainsi que des autres éléments typographiques est crucial ici.

!!!tip

    Attention notamment à la position du point `.` dans la parenthèse, on doit avoir :
    
    parenthèse ouvrante :arrow_right: point :arrow_right: espace :arrow_right: double quote :arrow_right: texte :arrow_right: double quote :arrow_right: parenthèse fermante
    :point_right: `(. "texte")`

## Création de l'infobulle

Pour notre questionnaire, on propose l'ajout d'une infobulle sur le terme "en moyenne" dans la question "Quel pourcentage de votre temps de travail consacrez-vous __en moyenne__ à ces différentes activités ?", avec le contenu suivant pour l'infobulle : "En moyenne sur un mois".

![Texte infobulle](../../img/pogues/texte-infobulle.png)


## Suite
Nous allons maintenant poursuivre l'[implémentation d'une variable calculée](23-utilisation-variable-calculee.md).