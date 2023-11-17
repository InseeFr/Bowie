# Les éléments dynamiques : contrôles, filtres et personnalisation

## Les contrôles
Deux types de contrôles sont proposés par la filière.

### Les contrôles dits "de format"
Ce sont des contrôles bloquants. Ils obligent le répondant à respecter le format et les bornes (max, min) pour les réponses numériques, date, et texte dont le motif est spécifié (pour les SIREN ou SIRET par exemple).
Ces contrôles se déclenchent à la sortie du champ concerné, et sont matérialisés par un message affiché immédiatement sous le champ concerné. 
Le texte des messages liés à un contrôle de format est standardisé. Le passage à la page suivante est impossible : une fenêtre (dont la forme et le contenu sont standardisés) invite le répondant à corriger la question et bloque sa navigation vers l'avant du questionnaire.
 
### Les contrôles dits "métier" ou "de cohérence" 
Décrits par le concepteur d'enquête, ils portent sur la cohérence du questionnaire, ne sont pas bloquants et sont matérialisés par un message apparaissant en dessous de la question. Ces messages demandent à l'enquêté de corriger ou valider une réponse : le format et l'emplacement du message est standardisé mais le texte du message affiché est au choix du concepteur.
S'il ne reste que des contrôles non bloquant sur une page, alors lorsque le répondant demande à passer à la page suivante une pop-up l’invite à corriger sa réponse, mais elle ne bloque pas la navigation. 

## Cas particulier : les questions obligatoires 
Sujet en cours d'instruction

## Les filtres

On appelle filtre le fait de masquer ou afficher une ou des questions, en fonction des réponses précédentes de l'enquêté, par exemple lorsqu’une condition est vérifiée. 
Le choix d'afficher ou masquer en première intention est laissé au concepteur : il peut par exemple être préférable d’afficher des questions si elles apportent une information susceptible d’améliorer la compréhension de l’enquêté mais il est préférable de masquer totalement les questions filtrées, dans le cadre de « branches » de questionnaire,

En termes de « conservation des données saisies », lorsque les questions disparaissent de l’écran, les réponses qui auraient pu y être saisies si le filtre avait été activé puis désactivé sont supprimées.

Les comportements de type filtre ne sont pas possibles au sein d’une même « question » (par exemple au sein d’un tableau) et ne concernent que des questions entières (libellé + déclarations + champs de réponse).

## La personnalisation

Il est possible de personnaliser le questionnaire, de différentes manières.

### Les données antérieures ou externes
Le questionnaire créé par la filière est un « modèle de questionnaire ». Lorsque ce questionnaire est instancié pour un enquêté on peut pré-renseigner certaines informations pour le répondant (exemple : adresse, code APE, réponse de l’année passée) par exemple pour personnaliser des libellés.
Ces informations sont fournies par la maîtrise d’ouvrage de l’enquête avant le début de la collecte : il peut s’agir de textes, nombres, valeurs booléennes, codes, dans des boucles ou pas, etc.
Le questionnaire peut aussi utiliser ces valeurs dans des champs de collecte pré remplis : dans ce dernier cas, le répondant peut modifier ces informations pré-renseignées.

### La personnalisation en cours de collecte
La personnalisation des libellés est également possible à partir de variables collectées, ou calculées en cours de collecte (si la question est posée avant la personnalisation). Attention toutefois aux modes de collecte : la personnalisation en cours de collecte ou l'utlisation de filtres personnalisés n'est pas possible sur le papier.