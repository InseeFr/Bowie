# Spécifier une liste de codes (New ✨)

On accède aux différentes listes de codes via le bouton sur la gauche
![alt text](image-11.png)

On arrive ensuite sur la page de gestion des listes de codes du questionnaire

![list code home](../../img/pogues/list-code-home.png)
!!! abstract "Légende"
    1. `Identifiant` du questionnaire
    1. `Bouton de création` d'une nouvelle liste de codes
    1. `Nom` d'une liste de code
    1. Colonne associée au `Code` des différentes modalités
    1. Colonne associée au `Libellé` des différentes modalités
    1. Une `Modalité` avec ses valeurs associées (`Code` et `Libellé`)


### Créer une nouvelle liste de codes

Après avoir appuyé sur le bouton de création d'une nouvelle liste de codes, la page suivante s'affiche

![list code creation](../../img/pogues/list-code-creation.png)
!!! abstract "Légende"
    1. `Nom` de la liste de code
    1. Une `Modalité`
        - `Code` de la modalité avec un champ texte
        - `Libellé` de la modalité avec un éditeur `VTL`
        - `Ajouter` une `Modalité` **enfant** (voir [gestion des niveaux](#gestion-des-niveaux))
        - `Supprimer` une `Modalité`
    1. `Ajouter` une nouvelle `Modalité`
    1. `Créer` (ou `Annuler`) la liste de codes 

!!! warning "Champs requis"
    Pour créer une liste de code, il faut au moins
    
    - Un nom
    - Une modalité avec un code et un libellé (la formule VTL associée doit être valide)  

#### Gestion des niveaux

Il est possible d'avoir plusieurs niveaux de modalités dans une même liste de codes

!!! danger "Les niveaux ne sont supportés que pour les tableaux et les QCM avec une liste de codes pour réponse (pas booléen)"

!!! tip "Ajouter des modalité "enfant""
    === "Liste initiale" 
        Quand on clique sur le :octicons-plus-24: à droite de la modalité, cela ajoute une nouvelle modalité enfant.
        ![alt text](image-1.png)
    === "Ajouter un enfant"
        ![alt text](image-2.png)
    === "Ajouter un 2ème enfant"
        Si on clique encore sur ce même :octicons-plus-24: cela rajoute une deuxième modalité enfant
        ![alt text](image-3.png)
    === "Ajouter un petit-enfant"
        En cliquant sur le :octicons-plus-24: de l'enfant on peut aller plus loin dans les niveau et avoir un enfant de l'enfant
        ![alt text](image-4.png)

!!! tip "Changer l'ordre des modalités"
    === "Ordre initial"
        On peut facilement changer l'ordre des modalités ou en supprimer
        ![alt text](image-5.png)
    === "Changer l'ordre"
        ![alt text](image-6.png)

!!! tip "Supprimer une modalité avec des enfants"
    === "Liste initiale"
        Quand on clique sur l'icone :octicons-trash-24: à droite de la modalité, cela la modalité parent avec tous ses enfants.
        ![alt text](image-7.png)
    === "Parent 1 supprimé"
        ![alt text](image-8.png)


??? exemple "Exemple complet"
    ![alt text](image.png)


### Éditer une nouvelle liste de codes

Une fois la liste de codes créée, on revient sur la page principale des listes de codes. <br>
On peut ensuite, sur une liste de codes déjà existante, exécuter les actions suivantes 

- `Modifier` : Accède à la page de modification de liste de codes
- `Dupliquer` : Crée une copie de la liste de code et l'ajoute en bas de la liste
- `Supprimer` : Supprime la liste de codes.

    !!! warning "Supprimer une liste de code utilisée dans une question"
        On ne peut pas supprimer une liste de code utilisée par des questions. La liste des questions concernées sont alors affichées dans une pop-up

### Utiliser une liste de codes dans un questionnaire 
Lors de la création d'une question avec réponse à choix unique ou multiple, on peut sélectionner la liste de codes à associer avec le champ `Choisir une liste de codes*`
=== "Choisir une liste de codes"
    ![alt text](image-9.png)
=== "Liste de codes sélectionnée"
    ![alt text](image-10.png)

#### "Autre préciser"

!!! tip "Pour plus de détails, voir [Complément textuel "Autre"](14b-autre-precisez.md)."

!!! warning "Un seul `Préciser` par liste de codes associé à une question"

=== "Ajouter un `Préciser`"
    Pour ajouter un [Complément textuel "Autre"](14b-autre-precisez.md), il suffit de cliquer sur le bouton `Ajouter un "Préciser"` puis d'indiquer son contenu dans le champ VTL `Libellé` qui est apparu.
    ![list-code-preciser](../../img/pogues/list-code-preciser.png)
    > Le champ `Identifiant` est généré automatiquement et peut être édité. La valeur saisie par l'enquêté est enregistrée dans cette variable.
=== "Éditer un `Préciser`" 
    Pour éditer un `Préciser` il suffit de cliquer sur le bouton d'édition
    ![list-code-preciser](../../img/pogues/list-code-preciser-edition.png)

!!! note 
    La demande de précision n'est pas associée à la liste de codes en elle-même mais bien à la **question qui utilise cette liste de code**.
    Ainsi pour une même liste de codes on peut avoir différents `Préciser` définis dans différentes questions.

