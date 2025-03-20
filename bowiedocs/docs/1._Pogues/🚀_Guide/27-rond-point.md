# Le Rond-point

Le _Rond-point_ est un composant de questionnaire permettant d'organiser une navigation non-linéaire pour les séquences répétées.

Le cas typique d'utilisation est pour permettre la réponse non-ordonnée à des questionnaires individuels après le questionnement au niveau ménage. C'est cet exemple que nous allons dérouler dans la suite de ce document. Bien sûr, d'autres cas de figure sont possibles, par exemple pour la réponse à des questions de niveau "établissement" après avoir collecté des informations au niveau "entreprise".

## Anatomie du Rond-point

### Dans Pogues

Le Rond-point se matérialise dans la vision structurelle du questionnaire avant la ou les séquences sur laquelle il va permettre de naviguer.

![Le Rond-point dans la vue structurelle](../../img/pogues/rond-point-vue-structure.png)

Le Rond-point exploite une boucle principale (par exemple : collecte des informations sur les habitants) pour créer sa navigation non-linéaire. Les concepts mobilisés sont très proches de ceux mis en oeuvre pour [les boucles](24-boucles.md).

Pour ajouter un comportement de type _Rond-point_ dans Pogues:

1. il faut cliquer sur _+ Rond-point_ dans la barre des actions après avoir placé la sélection sur la séquence précédent le placement du Rond-point
2. dans la fenêtre modale qui s'ouvre, on donne un libellé et un identifiant (_NB_ le libellé sera affiché comme titre dans le questionnaire web)
3. l'onglet _Boucle_ va permettre de décrire ce qu'on propose à la réponse via le Rond-point, le fonctionnement est similaire à celui d'une boucle simple :point_down:
4. on donne un identifiant,
5. on définit [la boucle principale](24-boucles.md#boucle-liée) qu'on exploite
6. on peut ajouter dans _Sauf_ une formule pour exclure du questionnement - par exemple `$AGE$ < 18` pour exclure les mineurs (cf. plus bas)
7. les champs _Début_ et _Fin_ permettre de préciser quelles parties questionnaires sont à remplir à travers le Rond-point
8. _Libellé identifiant une occurrence_ permet d'afficher par exemple le prénom de l'habitant qui va répondre à un questionnaire individuel
9. _Description d'une occurrence_ permet d'ajouter un texte descriptif pour chaque item du Rond-point (cf. plus bas)
10. Enfin la dernière option, _Interdire de modifier une occurrence terminée_, si elle est cochée, empêchera de modifier une occurrence du Rond-point déjà remplie.

Voici un exemple de Rond-point finalisé dans Pogues:

![Le Rond-point paramétré](../../img/pogues/rond-point-final.png)

#### Usage du Sauf

L'usage suit la même logique que pour les boucles : on utilise des variables, notamment des variables de boucles, pour permettre ou pas la réponse à une occurrence du Rond-point.

#### Usage de la description d'une occurrence

Ce champ va permettre de décrire chaque item, et pour ce faire on peut utiliser une expression VTL et des variables de boucle. Par exemple:

`"Le questionnaire individuel pour " || $PRENOM$`

donnera ce visuel:

![Visuel d'un libellé pour un item du Rond-point](../../img/pogues/rond-point-web-libelle.png)

#### Usage des contrôles 

Comme pour les questions, il est possible de définir des contrôles sur un rond point.
Ces contrôles peuvent être à un niveau `rond-point` ou `occurrence`.

#### Niveau `rond-point` :

Le contrôle considère les variables avec un niveau questionnaire : les variables de portée/niveau boucle sont considérés comme des vecteurs. (Ex: `PRENOMS = ["prénom1", "prénom2", "prénom3",...]`)

**Ex de contrôle :** `sum($SALAIRE$) > 10000` avec pour message "La somme des salaires de votre ménage dépasse 10 000 euros."
et ici `SALAIRE = [2900, 3500, 5000]`  

#### Niveau `occurrence` : 

- Le contrôle considère les variables avec un niveau boucle (la même boucle qui est lié au rond point) : les contrôle s'applique sur **chaque** occurrence !

**Ex de contrôle :** `AGE > 35` avec pour message "L'individu x a plus de 35 ans."
et ici `AGE = [40, 30, 50]` <br>
Le contrôle apparaîtra donc 2 fois, 1 fois pour ind1 (40) et une fois pour ind3(50). 

???+ example "Affichage de contrôles sur un rond-point"

    ![controles sur un rond-point](../../img/pogues/control-ront-point.png)

### Dans le questionnaire web

!!!warning

    Le Rond-point est uniquement disponible pour les questionnaires web. Il n'est pas supporté par les autres visualisations dont les questionnaires enquêteurs

Voici une vue du Rond-point :

![Anatomie du Rond-point dans Stromae DSFR](../../img/pogues/rond-point-web-anatomie.png)

Les différents éléments:

1. le libellé tel que défini dans Pogues
2. le libellé d'une occurrence
3. sa description
4. le bouton d'accès au sous-questionnaire
5. le bouton permettant de continuer dans le questionnaire au-delà des sous-questionnaires du Rond-point

Comme vu plus haut, les libellés sont tous paramétrables.

Le bouton en `4.` a le comportement suivant:

- si le sous-questionnaire n'a pas été visité, le libellé est "Commencer",
- si le sous-questionnaire a été visité mais pas terminé, "Reprendre",
- s'il est achevé, "Modifier".

Enfin, on voit que le sous-questionnaire de Charlie n'existe pas car nous avons appliqué un filtre grâce au champ _Sauf_ (voir plus haut).

## 