# Les publications au registre de questionnaires

## La publication au registre de questionnaire
Avant de partir en collecte, lorsque la spécification du questionnaire sous Pogues est terminée, il est possible de publier la sauvagarde courante d'un questionnaire au registre de questionnaires. Cette fonctionnalité vise à mettre à disposition de l'ensemble du système d'information de la filière un instrument de collecte dans le cadre de l'automatisation.

Le terme instrument de collecte désigne le questionnaire au format json Lunatic (un questionnaire Pogues généré pour les orchestrateurs dans un mode de collecte défini). On lui attache des métadonnées telles que les nomenclatures et le questionnaire au format xml DDI.

## La création d'une publication

On accède à la page de gestion des publications d'instruments de collecte via le menu `Publications` sur la gauche.

![Menu Publications](../../../img/pogues/publications-menu.png)

Pour créer une publication au registre de questionnaire, cliquer sur le bouton `Publier un instrument de collecte`

![](image.png)
![Menu création instrument de collecte](../../../img/pogues/creer-publication.png)
!!! abstract "Légende"
    1. Texte d'information sur ce qui va être publier : la sauvegarde en cours du questionnaire. Si vous souhaitez publier une autre sauvegarde, il suffit de la restaurer.
    1. Bloc d'information sur la série à laquelle le questionnaire est rattaché : les libellé et nom court de la série sont rappelés en lecture seule, pour les modifier il faut aller la page [Détail](../h._Detail/index.md) du questionnaire.
    1. `Nom` d'une liste de codes
    1. `Liste de codes`
        1. `Code` des différentes modalités
        1. `Libellé` des différentes modalités
        1. Une `Modalité` avec ses valeurs associées (`Code` et `Libellé`)
    1. `Nombre de questions` utilisant cette liste de codes