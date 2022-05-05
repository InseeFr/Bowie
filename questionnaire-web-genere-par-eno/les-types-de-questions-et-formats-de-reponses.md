# Les types de questions et formats de réponses

Les choix de typologie de réponses, et en particulier de terminologie suscitent parfois des incompréhensions liées au décalage entre un vocabulaire « contrôlé » (calqué sur une description formelle), et un vocabulaire « courant ». Le plus souvent, on peut englober dans le terme « question », le libellé de la question ET son champ de réponse. Par exemple la question « Quel est votre parfum de glace préféré ? » pourra prendre plusieurs formes :

* une question ouverte, dont la réponse est dite simple, avec un champ texte libre ;
* une question associée à une réponse à choix unique, en proposant une liste fermée de modalités de réponse. On parle parfois par abus de langage de question à choix unique, il s’agit en fait d’une question avec réponse à choix unique.

Eno propose de nombreux types de questions, comportant des formats de réponse plus ou moins complexes. Ces formats sont répartis en 4 groupes (du plus simple au plus complexe) :

* les questions ouvertes ou réponses simples
* les questions à choix unique
* les questions à choix multiple
* les tableaux

### Les questions ouvertes ou réponses dites simples

Il s’agit de répondre à une question ouverte, comprenant un seul champ, libre c’est-à-dire ne reposant pas sur une liste de codes fermée. Les formats de réponses peuvent varier :

* texte (dont le nombre maximum de caractères ou le « motif » – adresse mail par exemple – peuvent être précisés) ;
* numérique (les bornes maximum et minimum, ainsi que le nombre de décimales doivent être précisés ; l’affichage de l’unité constitue une aide pour le répondant – une liste d’unités est proposée dans Pogues, elle peut être élargie par une reprise manuelle). Un exemple non paramétrable (valeur borne min + (borne max – borne min)/4)) peut être ajouté à coté du champ de réponse (jusqu’en 2018, il était systématique mais la majorité des concepteurs préfèrent ne pas le proposer ou en proposer au cas par cas, dans les instructions lorsque cela est nécessaire) ;
* date (au format AAAA-MM-JJ, AAAA-MM ou AAAA) ;
* booléen (pour ce dernier type de réponse, seule la case à cocher est proposée comme mise en forme).

\[png004.png]

\[png005.png]

### Les questions à choix unique de réponse

Il s’agit de répondre à une question qualitative, s’appuyant sur une liste de codes, et présentée sous forme de boutons radios ou de liste déroulante. Parmi cette liste, l’enquêté ne peut effectuer qu’un seul choix.&#x20;

La mise en forme classique et accessible est un bouton radio : lorsque le répondant a sélectionné une réponse, elle ne peut plus être « désélectionnée » (il peut seulement sélectionner une autre modalité).&#x20;

**==**Pour plusieurs enquêtes, les réponses des questions à choix unique sont représentées par des cases à cocher décochables afin d’offrir au répondant la possibilité de revenir sur sa réponse (en particulier annuler sa réponse, ce que ne permet pas le bouton-radio usuel), Il faut avoir conscience que cela contrevient aux standards du web et aux critères d’accessibilité. Sur le web ces deux représentations sont différentes.==

\[png006.png]

Dans les questionnaires papier, les listes déroulantes seront remplacées par un champ texte libre.

### Les questions à choix multiple

Il s’agit de répondre à une question qualitative s’appuyant sur une liste de codes. Parmi cette liste, l’enquêté peut effectuer plusieurs choix :

* soit en cochant plusieurs cases ;
* soit en sélectionnant oui/non pour chacune des modalités. Ici encore, si le concepteur choisit des cases à cocher, elles seront décochables, s’il choisit des boutons radio, le répondant ne pourra pas annuler sa réponse (mais uniquement choisir une autre modalité). Cette mise en forme peut également être retenue pour des batteries de questions :

\[png007.png]

### Les tableaux

Les tableaux permettent de présenter l’information à collecter, de manière compacte et visible en une seule fois.&#x20;

Il est communément reconnu dans la littérature que les tableaux doivent être évités lorsque c’est possible. En effet, si ce format est particulièrement familier aux statisticiens, ce n’est pas nécessairement le cas pour les répondants : il est recommandé de simplifier lorsque c’est possible, et de poser plutôt les questions simplement de façon disjointe.&#x20;

De plus, les tableaux sont souvent utilisés dans les questionnaires papier, pour des raisons de place. Lors du passage à un questionnaire internet, ce format ne doit pas être adopté de façon systématique, mais uniquement lorsque la représentation (en tableau) est utile à la compréhension, et représente réellement la structure de l’information demandée. &#x20;



Les tableaux comprennent un ou deux axes d’informations (qualitatifs) et une ou plusieurs mesures (pouvant prendre les différents formats des réponses simples et uniques). Les titres de colonnes sont définis colonne par colonne. La hauteur et la largeur des lignes sont calculées de manière automatique à partir de leur contenu. &#x20;

A noter en termes de spécification dans Pogues, bien qu’il permette de collecter plusieurs « variables », le tableau est bien comme une question et non pas un ensemble de questions.

\[png008.png] \[png009.png]

#### Tableaux dynamiques

Outre les tableaux à 2 dimensions fixées, il est possible de proposer des \*« tableaux dynamiques »\* donc des tableaux, en général préremplis, auxquels on peut ajouter des lignes (présence d’un bouton « “Ajouter”):

* les lignes ajoutées auront toutes le même format, éventuellement différent du format des lignes qui les précèdent.
* les tableaux dynamiques ne comportent pas d’entête de ligne.

\[png0010.png]

### Les listes hiérarchiques&#x20;

Il est possible d’utiliser dans les tableaux des listes de codes hiérarchiques. La présentation imbriquée est pour l’instant la présentation par défaut.

### Les boucles

On appelle boucle le questionnement répétitif d’un ensemble de questions. Une boucle ne peut concerner que des modules (ou sous-modules) entiers. On appelle cet ensemble de questions une occurrence. Si nécessaire, on peut définir un nombre maximum d’occurrences affichables, en absolu ou avec une variable collectée.

\[png0011.png]
