# Composants permettant de créer un questionnaire dans Pogues


!!! info "Contrôles d'intégrité du questionnaire"

    - le questionnaire doit comporter au moins une séquence et une question
    - unicité des identifiants de question, séquence ou sous-séquence
    - unicité des identifiants de variables collectées, externes ou calculées


!!! danger "Attention lors du déplacement des éléments par glisser/déposer"
    Le déplacement d'une séquence ou sous-séquence déplacent aussi les sous-séquences ou questions qui lui sont reliées.

!!! tip "Comment bien débuter avec Pogues"
    N'hésitez pas non plus à aller faire un tour dans le [:material-school-outline: tutoriel](../../Tutoriel/index.md) si c'est la première fois que vous faite du Pogues

## Composants d'un questionnaire 

<div class="grid cards" markdown>

-   __[:material-view-sequential-outline: Séquences](10-sequences.md){ .md-button }__
    
-   __[:material-file-tree: Sous-séquences](11-sous-sequences.md){ .md-button }__
    
-   __[:material-text: Déclarations](21-declarations.md){ .md-button }__

-   __[:material-information-variant-circle-outline: Infobulles](22-info-bulle.md){ .md-button }__
    
-   __[:material-alert-octagon-outline: Controles](23-controles.md){ .md-button }__

-   __[:material-reload: Boucles](24-boucles.md){ .md-button }__

-   __[:material-filter-outline: Filtres](25-filtres.md){ .md-button }__

-   __[:material-view-compact-outline: Composition](26-composition.md){ .md-button }__

-   __[:material-format-list-text: Rond-point](27-rond-point.md){ .md-button }__

</div>

## Sauvegarder ou Visualiser le questionnaire

Il est possible de sauvegarder ou de visualiser le questionnaire à tout moment via les boutons dédiés en haut de page.

!!! warning ""
    Il n'est pas possible de dupliquer un questionnaire non sauvegardé

- Sans modification en cours du questionnaire
![alt text](../../../img/pogues/visualisation-no-modification.png)
- Avec des modifications non sauvegardées
![alt text](../../../img/pogues/visualisation-with-modification.png)
