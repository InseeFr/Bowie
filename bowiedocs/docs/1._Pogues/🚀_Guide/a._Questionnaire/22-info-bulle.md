# Les infobulles

Les [infobulles ou bulles d’aide](https://fr.wikipedia.org/wiki/Infobulle), sont des éléments interactifs d’interface utilisateur qui fournissent de l'information aux utilisateurs.  
Leur fonction principale est d’offrir des informations complémentaires ou des clarifications sur des éléments d’interface spécifiques, sans surcharger l’utilisateur avec un excès de détails.  
Elles doivent être concises et ne pas contenir d’informations cruciales à la réalisation des tâches principales.

## Syntaxe

!!! example "Exemple"
    ```
    "Ceci est une question avec une [précision](. "une infobulle sur précision") avec infobulle sur le mot précision"
    ```
    ce qui done : <br>

    Ceci est une question avec une [précision](. "une infobulle sur précision") avec infobulle sur le mot précision



Le positionnement des simples et doubles quotes, ainsi que des autres éléments typographiques est crucial ici.

!!!tip

    Attention notamment à la position du point `.` dans la parenthèse, on doit avoir :
    
    parenthèse ouvrante :arrow_right: point :arrow_right: espace :arrow_right: double quote :arrow_right: texte :arrow_right: double quote :arrow_right: parenthèse fermante
    :point_right: `(. "texte")`

!!! warning "Incompatibilité"
    Les infobulles ne fonctionnent pas quand on a des parenthèses dans l'infobulle