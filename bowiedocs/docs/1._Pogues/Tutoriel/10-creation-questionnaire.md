# Création d'un questionnaire

Sur la page d'accueil de Pogues, cliquer sur le bouton "Créer un questionnaire" :
![Bouton de création d'un questionnaire](../../img/pogues/creation-questionnaire-go.png)

La fenêtre de création du questionnaire permet de renseigner les paramètres de contexte du questionnaire (identifiant, dynamisme) et de l'enquête (modes de collecte).

![creation-questionnaire-page](../../img/pogues/creation-questionnaire-page.png)

## Identification

Il faut donner un "Titre" au questionnaire. Par défaut, un identifiant sera créé à partir de ce titre, vous pouvez par la suite le modifier en cliquant sur le menu "Détail" sue la gauche.

!!! tip
    Par convention, les identifiants des éléments du questionnaire (séquences, boucles, variables, etc.) seront écrits sous la forme `MON_IDENTIFIANT`: pas de caractères spéciaux ni d'accents

!!! example "Cas pratique"
    Dans le cadre de ce tutoriel, nous allons utiliser `Tutoriel` comme titre. Vous verrez que l'identifiant automatiquement généré sera alors `TUTORIEL`. Vous avez la possibilité de modifier cet identifiant.

## Modes

Quatre modes de collecte sont disponibles, vous pouvez sélectionner une ou plusieurs modalités selon le contexte de votre enquête :

- CAPI, pour les enquêtes en face-à-face par l'intermédiaire d'un enquêteur
- CATI, pour les enquêtes par téléphone
- CAWI, pour les enquêtes via Internet
- PAPI, pour les enquêtes avec questionnaire au format papier

!!! note
    Actuellement, l'impact sur les questionnaires mêmes est mince : seules les déclarations (aides enquêté, consignes enquêteur) sont affichées ou non selon leur mode de collecte.

## Dynamisme

Les dernières options permettent de définir les aspects dynamiques du parcours du questionnaire :

- la gestion de l'affichage ou non des objets ("Redirection" ou "Filtre")
- le langage utilisé pour les contrôles, filtres, calculs de variables ("XPath" ou "VTL")


!!! warning

    Les options "Redirection" et "XPath" sont réservées exclusivement aux questionnaires intégrés à la plateforme de collecte Coltrane.


Pour ce tutoriel, nous choisissons "Filtre" et "VTL".

## Information sur le processus

On peut ajouter l'information **Série**, en fonction de l'enquête correspondante telle que décrite dans [Bauhaus :material-open-in-new:](https://gestion-metadonnees.insee.fr/) (processus spécifique au contexte Insee, on ne le détaille pas ici.).   
Par défaut ce champ est vide et n'est pas proposé lors de la création du questionnaire. Il faut le spécifier dans la page "Détail" via le menu à gauche.

!!! tip
    Si vous êtes en train de vous autoformer, vous pouvez choisir n'importe quelles valeurs, cela n'a pas d'impact sur le reste du questionnaire


!!! warning

    Il est possible de modifier **l'identifiant du questionnaire** qui a été généré automatiquement lors de la création du questionnaire.
    Il est impératif d'utiliser **uniquement des caractères alphanumériques** pour la suite des traitements.  
    La taille maximale est de 10 caractère pour l'identifiant.

!!! abstract "Pour aller plus loin"

    <div class="grid cards" markdown>

    - __[Page de Détail :material-arrow-right-bold-box-outline:](../🚀_Guide/h._Detail/index.md)__

    </div>


## Suite
[Créer une première séquence](11-creation-premiere-sequence.md)
