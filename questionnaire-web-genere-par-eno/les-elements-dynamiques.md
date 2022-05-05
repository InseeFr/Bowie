# Les éléments dynamiques

### Les contrôles

Deux types de contrôles sont possibles dans Eno.

#### Les contrôles de format

Ce sont des contrôles bloquants. Ils obligent le répondant à respecter le format et les bornes (max, min) pour les réponses numériques, date, et texte dont le motif est spécifié (pour les adresses mail par exemple).&#x20;

Ces contrôles se déclenchent à la sortie du champ concerné, et sont matérialisés par un message en police rouge, affiché immédiatement sous le champ concerné.&#x20;

La rédaction des messages liés à un contrôle de format est standardisée : « Vous devez saisir un nombre entier compris entre 0 et 100 » ou « Vous devez utiliser le point comme séparateur de décimale, sans espace, et saisir un nombre compris entre 0.0 et 100.0 (avec au plus 1 chiffre derrière le séparateur ". » »&#x20;

Le passage à la page suivante est impossible : une pop-up invite le répondant à corriger la question et ne permet pas d’aller plus loin. Le message de la pop-up est standardisé, sur la forme, et sur le fond.

\[png0012.png]

#### Les contrôles « métier »

Ils portent sur la cohérence du questionnaire, ne sont pas bloquants et sont matérialisés par un message rouge apparaissant en dessous de la question.&#x20;

Ces messages, invitant l’utilisateur à corriger suite à un contrôle de cohérence, sont standardisés en termes de mise en forme (couleur, et emplacement du message) mais le texte du contrôle doit être décrit dans Pogues.&#x20;

S’il reste un contrôle non bloquant sur la page, alors lorsque le répondant demande à passer à la page suivante une pop-up l’invite également à corriger sa réponse, mais elle ne bloque pas le passage à la page suivante. Le message est standard sur la forme et sur le fond.&#x20;

Un bouton « poursuivre » permet de passer à la page suivante si le répondant ne souhaite pas corriger sa réponse.&#x20;

Remarque : si un contrôle concerne plusieurs champs, il se déclenche, si la condition est vérifiée, dès la sortie du premier des champs concernés. En particulier, si le contrôle consiste à vérifier que B n’est pas vide, dès lors que A est renseigné, il peut se déclencher dès la sortie de la question A, alors même que le répondant n’a pas encore accédé à la question B.&#x20;

\[png013.png]

### Les redirections ou filtres

On appelle redirection ou filtre le fait de masquer ou afficher une question, en fonction des réponses précédentes du répondant :

* afficher une suite de questions lorsqu’une condition est vérifiée.
* masquer une suite de questions lorsqu’une condition est vérifiée. Il peut par exemple être préférable d’afficher des questions si elles apportent une information susceptible d’améliorer la compréhension de l’enquêté. En revanche dans le cadre de « branches » de questionnaire, il est préférable de masquer totalement les questions filtrées.

En termes de « conservation des données saisies », lorsque les questions disparaissent de l’écran, les réponses qui auraient pu y être saisies si le filtre avait été activé puis désactivé sont supprimées.

Les comportements de type filtre ne sont pas possibles au sein d’une même « question » (par exemple au sein d’un tableau) et ne concernent que des questions entières (libellé + déclarations + champs de réponse).

### La personnalisation

Il est possible de personnaliser le questionnaire, de différentes manières.

#### Les données antérieures ou externes

Le questionnaire créé par Eno est un « modèle de questionnaire ». Lorsque ce questionnaire est instancié pour un enquêté on peut pré-renseigner certaines informations pour le répondant (exemple : année d’exercice, code APE, réponse de l’année passée). Ces informations sont fournies avant le début de la collecte : il peut s’agir de textes, nombres, valeurs booléennes, codes, dans des boucles ou pas, etc. Le questionnaire généré par Eno peut utiliser ces valeurs pour personnaliser des libellés voire dans des champs de collecte pré remplis : dans ce dernier cas, le répondant peut s’il le souhaite modifier ces informations pré-renseignées.

#### La personnalisation en cours de collecte

La personnalisation des libellés est également possible à partir de variables collectées, ou calculées en cours de collecte (si la question est posée avant la personnalisation).&#x20;

Attention toutefois, la personnalisation en cours de collecte n’est possible que pour un questionnaire web, et pas pour un questionnaire papier : les questionnaires papier ne peuvent être personnalisés que par des informations connues a priori. De même, l’utilisation de filtres à des fins de personnalisation du questionnaire est possible dans le web, mais pas sur le papier.
