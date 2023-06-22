# Insertion d'une infobulle

L'ajout d'une [infobulle](https://fr.wikipedia.org/wiki/Infobulle) est possible dans les libellés des questions en appliquant une syntaxe particulière :

```md
Le texte de ma question contenant [une infobulle](. "Contenu de l'infobulle.").
```

Le positionnement des simples et doubles quotes, ainsi que des autres éléments typographiques est crucial ici.

!!!tip

    Attention notamment à la position du point `.` dans la parenthèse, on doit avoir :
    
    parenthèse ouvrante :arrow_right: point :arrow_right: espace :arrow_right: double quote :arrow_right: texte :arrow_right: double quote :arrow_right: parenthèse fermante

    :point_right: `(. "texte")`

Pour notre questionnaire, on propose l'ajout d'une infobulle sur le terme "travailler" dans la question "A quelle date avez-vous commencer à __travailler__ ?", avec le contenu suivant pour l'infobulle : "Ne comptez pas les années de scolarité."
