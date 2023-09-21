# Couverture fonctionnelle détaillée

On liste dans le tableau ci-dessous - avec un détail assez fin - ce que l'on sait spécifier dans un questionnaire conçu à travers Bowie.

La section qui suit le tableau donne des perspectives sur de futures fonctionnalités (retenues ou pas).

!!!note "Lecture du tableau"

    - Lorsque la fonctionnalité est disponible, le nom du composant ou sa traduction est citée dans le tableau.
    - Lorsque la fonctionnalité n'est pas disponible mais est prévue, la date d'échéance est indiquée.
    - Les fonctionnalités qui ne seront pas faites sont également listées.

## Détail des fonctionnalités

 | <span style='color:#555ff8;font-weight:bold'>Ce qui peut être décrit dans Pogues/Eno</span> |  <span style='color:#555ff8;font-weight:bold'>Lunatic (Platine, Queen)</span>  |  <span style='color:#555ff8;font-weight:bold'>papier</span>  | <span style='color:#555ff8;font-weight:bold'>xforms  (Coltrane)</span> |
 |----------|----------|----------|----------|
 |  **Questions ouvertes ou réponses simples**    |  
 |  Texte : si longueur < 250 ou non décrite | ok - Input |  ligne encadrée |  zone fixe  |  
 |  Texte : si longueur >= 250 |  ok -TextArea |  bloc hauteur 5 lignes, paramétrable |  zone de dimension variable |  
 |  Numérique (bornes maximum et minimum, nombre de décimales, unités) |  ok - InputNumber |  zone de saisie fixe avec ou sans précasage, unités | zone fixe, unités |  
 |  -> séparateurs de milliers | ok - oui  |  sans objet sans précasage ; OK avec | oui |  
 |  Date (au format AAAA-MM-JJ) |  ok - Datepicker (zone de saisie avec calendrier) |  précasage | zone de saisie avec calendrier |  
 |  Date (au format AAAA-MM ou AAAA) |  <span style='color:#ff6251;font-weight:bold'>prévu S1 2024</span>   |  précasage | 2 zones de saisie |  
 |  Duree (mois, jour, heures) |   <span style='color:#ff6251;font-weight:bold'>prévu S1 2024</span>  |  zone de saisie | zone de saisie |  
 |------------------------------|----------|----------|----------|
 |  **Questions à choix unique** |   |   |   |  
 |  Case à cocher : bouton radio |  ok - Radio |  cases à cocher | cases à cocher rondes |  
 |  Case à cocher : décochable  <span style='color:#ff6251;font-weight:bold'>non standard web</span>  |  ok - ChekboxOne |  cases à cocher |  cases à cocher  |  
 |  Autocomplétion (non spécifiable dans Pogues) |  ok - Suggester | sans objet  | non proposé (cf. dropdown)  |  
 |  Liste déroulante |   ok - Dropdown |  ligne encadrée  |  liste déroulante |  
 |  Booléen |   ok - CheckboxBoolean |  case |  case à cocher |  
 |------------------------------|----------|----------|----------|
 |  **Questions à choix multiple**|   |   |   |  
 |  Cases à cocher (décochables) |   ok - CheckboxGroup |   cases à cocher |  cases à cocher |  
 |  Batteries de question (QCM dont la réponse est une liste de modalités) |  ok -  Table  |  cases à cocher  | cases à cocher |  
 |  Question "Autres -> préciser" |   <span style='color:#ff6251;font-weight:bold'>prévu S1 2024</span>  |  encadré libre | affichage dynamique d’une question  |  
|------------------------------|----------|----------|----------|
| **Structure**  |   |   |   |  
|  Déclarations (Aides, Consigne enquêteurs, carte code) |   ok - Declarations  |  texte |  texte |  
 |  Infobulles |   ok - Tooltip, texte souligné, mise en forme à revoir |  représentée par une étoile |  point interrogation, survolable |  
 |  Séquence |   ok - Sequence |  Texte |  Texte  |  
 |  Sous-séquence |  ok - Subsequence |  Texte  |  Texte  |  
 |  Fil d’Ariane |   ok - Breadcrumb (sur poste enquêteur)|  Sans objet  |  Non proposé |  
 |  Fil d’Ariane |  ko -Breadcrumb (sur poste web) <span style='color:#ff6251;font-weight:bold'>prévu S1 2024</span> |  Sans objet  |  Non proposé |  
 |------------------------------|----------|----------|----------|
 |  **Tableaux** | |    |    |  
 |  Tableaux simples | Table  | tableaux, nb de lignes fixes    |  tableaux, nb de lignes fixes  |  
 |  Tableaux dynamiques | <span style='color:#53b5b6;font-weight:bold'>en cours de développement</span>  | tableaux, nb de lignes paramétrables   |  tableaux, nb de lignes fixes ou dynamiques  |  
 |  Tableaux dynamiques personnalisés | <span style='color:#53b5b6;font-weight:bold'>à tester quand tableaux finalisés</span>  | ok   |  ok  |
 |  Totaux de tableaux dynamiques  | <span style='color:#53b5b6;font-weight:bold'>à rajouter dans Pogues S2 2024</span>  | sans objet   |  sans objet  |
 |------------------------------|----------|----------|----------|
 |  **Boucles** |  |    |   |  
 |  Boucles - ensemble de questions répétées (principale ou liée, min et max collectés ou fixes) |  ok - Loop |  Répétition d'un ensemble de questions, nb occurrences paramètrables |  Répétition d'un ensemble de questions |  
 |  Boucles préremplies | <span style='color:#ff6251;font-weight:bold'>à tester </span>  |  ok  |  ok |  
 |  Liens deux à deux (composition familiale) |  ok - Pairwise |  sans objet  |  ne sera pas proposé |  
 |------------------------------|----------|----------|----------|
 |  **Éléments dynamiques** |   |   |   |  
 |  Contrôles de cohérence, personnalisés |  ok  |  sans objet |  ok |  
 |  Contrôles de format  |  ok |  sans objet |  ok |  
 |  Les filtres |  ok |  affichage d’un texte alternatif |  ok |  
 |  La personnalisation |  ok  |  ok | ok  |  
 |   |   |   |   |  

## Perspectives

La notion de _MVP_ ici représente les priorités données au niveau filière pour les 18 mois à venir (jusqu'à fin 2024, début 2025). Cela signifie qu'une fonctionnalité _MVP_ sera déployée à 18 mois alors qu'une fonctionnalité hors _MVP_ ne le sera pas forcément.

<span style='color:#555ff8;font-weight:bold'>**A améliorer**</span> :

- Affichage par séquence dans l'orchestrateur de collecte web choisi (Stromae V2 ? V3 ?)

<span style='color:#555ff8;font-weight:bold'>**A developper coté Pogues-Eno pour être proposé dans la filière**</span>

- Rond-point  (composant Lunatic  roundabout) décrit dans Pogues et Eno : **T2 2024**
- Rond-point "enrichi" (spécifier le libellé du bouton) : **non MVP**
- Nouveaux composants RP / composant multipage : après 2024. **Non MVP**
  
 <span style='color:#555ff8;font-weight:bold'>**A developper coté Lunatic**</span>

- Mode management **MVP**
- Budgets séparés **non MVP**

 <span style='color:#555ff8;font-weight:bold'>**A developper coté orchestrateur**</span>

- Paradonnées Queen **non MVP**
- StromaeV3 **à qualifier**

<span style='color:#555ff8;font-weight:bold'>**Ne sera pas fait**</span>  

- Boucles de boucles
- Barre d'avancement (pas avant au mieux 2025)
- Tirage aléatoire parmi une boucle (pas avant au mieux 2025)

<span style='color:#555ff8;font-weight:bold'>**A prioriser**</span>  

- Listes dynamiques
- Queen dans Public Enemy
- Questions obligatoires
