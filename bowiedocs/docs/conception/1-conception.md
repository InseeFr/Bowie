# Les types de questions et formats de réponses

Les choix de typologie de réponses, et en particulier de terminologie suscitent parfois des incompréhensions liées au décalage entre un vocabulaire « contrôlé » (calqué sur une description formelle), et un vocabulaire « courant ». Le plus souvent, on englobe dans le terme « question », le libellé de la question ET son champ de réponse. Par exemple la question « Quel est votre parfum de glace préféré ? » pourra prendre plusieurs formes :

- une question ouverte, dont la réponse est dite simple, avec un champ texte libre ;
- une question associée à une réponse à choix unique, en proposant une liste fermée de modalités de réponse. On parle parfois par abus de langage de question à choix unique, il s’agit en fait d’une question avec réponse à choix unique.

L'atelier de conception propose de nombreux types de questions, comportant des formats de réponse plus ou moins complexes. Ces formats sont répartis en 5 groupes (du plus simple au plus complexe) : 

- les questions ouvertes ou réponses simples
- les questions à choix unique
- les questions à choix multiple
- les tableaux

## Les questions ouvertes ou réponses dites simples

Il s’agit de répondre à une question ouverte, comprenant un seul champ, libre, c’est-à-dire ne reposant pas sur une liste de codes fermée. Les formats de réponses peuvent varier :

- texte (dont le nombre maximum de caractères ou le « motif » – adresse mail par exemple – peuvent être précisés) ;
- numérique (les bornes maximum et minimum, ainsi que le nombre de décimales doivent être précisés ; l’affichage de l’unité constitue une aide pour le répondant – une liste d’unités est proposée dans Pogues).
- date (au format AAAA-MM-JJ, AAAA-MM ou AAAA) ;
- booléen : pour ce type de réponse, seule la case à cocher est proposée comme mise en forme, mais une évolution pour proposer un visuel de type "switch" est en cours.

## Les questions à choix unique de réponse

Il s’agit de répondre à une question qualitative, s’appuyant sur une liste de codes, et présentée sous forme de boutons radios, de liste déroulante ou de listes d'autocomplétion : parmi ces listes, l’enquêté ne peut effectuer qu’un seul choix.

**Boutons-radios** : la mise en forme classique et accessible est un bouton radio et lorsque le répondant a sélectionné une réponse, elle ne peut plus être « désélectionnée » - il peut seulement sélectionner une autre modalité.

Pour plusieurs enquêtes, les réponses des questions à choix unique sont représentées par des cases à cocher décochables afin d’offrir au répondant la possibilité de revenir sur sa réponse (en particulier annuler sa réponse, ce que ne permet pas le bouton-radio usuel), Il faut avoir conscience que cela contrevient aux standards du web et aux critères d’accessibilité. Sur le web ces deux représentations sont différentes.

**Liste en autocomplétion** : ce type de variable permet à l'utilisateur de limiter la quantité d'informations qu'il saisit avec son clavier, en se voyant proposer un complément qui pourrait convenir à la chaîne de caractères qu'il a commencé à taper.

**Liste déroulante** : cette liste permet de proposer une liste fermée, généralemen pas trop longue de choix, mais il est recommandé de privilégier l'autocomplétion lorsque cela est possible ou que la liste est longue.

## Les questions à choix multiple

Il s’agit de répondre à une question qualitative s’appuyant sur une liste de codes. Parmi cette liste, l’enquêté peut effectuer plusieurs choix :

- soit en cochant plusieurs cases ;
- soit en sélectionnant oui/non pour chacune des modalités.

Ici encore, si le concepteur choisit des cases à cocher, elles seront décochables, s’il choisit des boutons radio, le répondant ne pourra pas annuler sa réponse (mais uniquement choisir une autre modalité). Cette mise en forme peut également être retenue pour des batteries de questions 

## Les tableaux

**Usage** : les tableaux permettent de présenter l’information à collecter, de manière compacte et visible en une seule fois. Il est communément reconnu dans la littérature que les tableaux doivent être évités lorsque c’est possible : d'une part ce format ne réponse ne se prête pas à l'accessibilité et d'autre part, si ce format est particulièrement familier aux statisticiens, ce n’est pas nécessairement le cas pour les répondants.
Il est donc recommandé de poser plutôt les questions simplement de façon disjointe et, si ce n'est pas possible, de les simplifier.

Les tableaux comprennent un ou deux axes d’informations (qualitatifs) et une ou plusieurs mesures (pouvant prendre les différents formats des réponses simples et uniques).
Les titres de colonnes sont définis colonne par colonne.
La hauteur et la largeur des lignes sont calculées de manière automatique à partir de leur contenu. 
 
Outre les tableaux à 2 dimensions fixées, il est possible de proposer des **« tableaux dynamiques »** donc des tableaux, en général préremplis, auxquels on peut ajouter des lignes (présence d’un bouton "Ajouter"):

- les lignes ajoutées auront toutes le même format, éventuellement différent du format des lignes qui les précèdent ;
- les tableaux dynamiques ne comportent pas d’entête de ligne.


**Cas particulier** : les listes hiérarchiques

Il est possible d’utiliser dans les tableaux des listes de codes hiérarchiques. La présentation imbriquée est pour l’instant la présentation par défaut.

## Les liens deux-à-deux 

Ce type de question permet de décrire, pour les enquêtes ménages, les liens familiaux entre habitants d'un logement.