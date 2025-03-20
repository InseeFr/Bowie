# Spécifier une liste de codes (New ✨)

On accède aux différentes listes de codes via le bouton sur la gauche
![list code menu button](../../img/pogues/list-code-menu.png)

On arrive ensuite sur la page de gestion des listes de codes du questionnaire

![list code home](../../img/pogues/list-code-home.png)
!!! abstract "Légende"
    1. `Identifiant` du questionnaire
    1. `Bouton de création` d'une nouvelle liste de codes
    1. `Nom` d'une liste de code
    1. Colonne associée au `Code` des différentes modalités
    1. Colonne associée au `Libellé` des différentes modalités
    1. Une `Modalité` avec ses valeurs associés (`Code` et `Libellé`)


### Créer une nouvelle liste de codes

Après avoir appuyer sur le bouton de création d'une nouvelle liste de codes, la page suivante s'affiche

![list code creation](../../img/pogues/list-code-creation.png)
!!! abstract "Légende"
    1. `Nom` de la liste de code
    1. Une `Modalité`
        1. `Code` de la modalité avec un champ texte
        1. `Libellé` de la modalité avec un éditeur `VTL`
        1. `Ajouter` une `Modalité` **enfant** (voir [gestion des niveaux](#gestion-des-niveaux))
        2. `Supprimer` une `Modalité`
    1. `Ajouter` une nouvelle `Modalité`
    1. `Créer` (ou `Annuler`) la liste de code 

!!! warning "Champs requis"
    Pour créer une liste de code, il faut au moins
    
    - Un nom
    - Une modalité avec un code et un libellé (la formule VTL associée doit être valide)  

#### Gestion des niveaux

_TODO_

### Éditer une nouvelle liste de codes

_TODO_

### Supprimer une nouvelle liste de codes

_TODO_

### Utiliser une liste de code dans un questionnaire 
_TODO_

#### Ajouter un "Autre préciser"

Pour ajouter un [Complément textuel "Autre"](14b-autre-precisez.md), il suffit de cliquer sur le bouton `Ajouter un "Préciser"` puis d'indiquer son contenu dans le champ VTL `Libellé` qui est apparut.

![list-code-preciser](../../img/pogues/list-code-preciser.png)
> Le champ `Identifiant` est généré automatiquement. Pas besoin d'y toucher

Pour éditer un `Préciser` il suffit de cliquer sur le bouton d'édition
![list-code-preciser](../../img/pogues/list-code-preciser-edition.png)

!!! note 
    Cet information n'est pas associée à la liste de code en elle même mais bien à la **question qui utilise cette liste de code**.
    Ainsi pour une même liste de code on peut avoir différent `Préciser` définis dans différentes questions.


!!! warning "Un seul `Préciser` par liste de code associé à une question"

!!! tip "Pour plus de détails, voir [Complément textuel "Autre"](14b-autre-precisez.md)."