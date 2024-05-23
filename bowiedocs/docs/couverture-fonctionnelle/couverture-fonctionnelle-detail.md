# Couverture fonctionnelle détaillée (mai 2024)

On liste dans le tableau ci-dessous - avec un détail assez fin - ce que l'on sait spécifier dans un questionnaire conçu à travers les outils de la filière.

La section qui suit le tableau donne quelques perspectives sur de futures fonctionnalités (retenues ou pas).

!!!note "Lecture du tableau"

    - Lorsque la fonctionnalité est disponible, le nom du composant ou sa traduction est citée dans le tableau.
    - Lorsque la fonctionnalité n'est pas disponible mais est prévue, la date d'échéance est indiquée.
    - Les fonctionnalités qui ne seront pas faites sont également listées.

## Détail des fonctionnalités

 | <span style='color:#555ff8;font-weight:bold'>Ce qui peut être décrit dans Pogues/Eno</span> |  <span style='color:#555ff8;font-weight:bold'>Composant Lunatic </span>  |  <span style='color:#555ff8;font-weight:bold'>Stromae DSFR</span>  | <span style='color:#555ff8;font-weight:bold'>Queen </span> | <span style='color:#555ff8;font-weight:bold'>papier</span> |
 |----------|----------|----------|----------|----|
 |  **Questions ouvertes ou réponses simples**    |  
 |  Texte de longueur < 250 |  Input | zone de texte | zone de texte| ligne encadrée |
 |  Texte de longueur >= 250 |   TextArea |zone de texte | zone de texte|  bloc hauteur 5 lignes, paramétrable |
 |  Numérique (bornes maximum et minimum, nombre de décimales, unités) | InputNumber | champ numérique| champ numérique|  zone de saisie fixe avec ou sans précasage |
 |  -> séparateurs de milliers | ok  |ok|ok |  sans objet sans précasage ; ok avec |
 |  -> unités | ok  | affiché dans le champ de saisie et dans une description au dessus du champ|  à coté du champ de saisie  |  sans objet sans précasage ; ok avec |
 |  Date au format AAAA-MM-JJ |  Datepicker| 3 champs de saisie |3 champs de saisie |  précasage |
 |Date au format AAAA-MM | Datepicker  | 2 champs de saisie | 2 champs de saisie |  précasage | 2 zones de saisie |
 |  Date au format AAAA | Datepicker  |1 champ de saisie |1 champ de saisie |  précasage |  
 |  Duree (année/mois ou heures/minutes) |Duration  | 2 champs de saisie|2 champs de saisie |  zone de saisie |  
 |------------------------------|----------|----------|----------|
 |  **Questions à choix unique** |   |   |   |  
 |  Case à cocher : bouton radio |  Radio | boutons radios  | boutons radios | cases à cocher |  
 |  Case à cocher : décochable  <span style='color:#ff6251;font-weight:bold'>non standard web</span>  |  <span style='color:#ff6251;font-weight:bold'>non repris</span> | | | cases à cocher |
 | Recherche sur liste / autocomplétion | Suggester | zone de recherche |zone de recherche  | sans objet  |
 |  Liste déroulante |  Dropdown |liste déroulante | liste déroulante |  zone de saisie  |
 |  Booléen |  CheckboxBoolean | case à cocher| case à cocher|   case |
 |------------------------------|----------|----------|----------|
 |  **Questions à choix multiple**|   |   |   |  
 |  QCM - Cases à cocher décochables | CheckboxGroup | cases à cocher |cases à cocher |  cases à cocher |
 |  Batteries de question (QCM dont la réponse est une liste de modalités) | Table  | cases à cocher |cases à cocher | cases à cocher  |
 |  Question "Autres -> préciser" |   ok  |zone de texte | zone de texte |  encadré libre |  
|------------------------------|----------|----------|----------|
| **Structure**  |   |   |   |  
|  Déclarations de questions (Aides, Consigne enquêteurs, carte code) avant ou après la question | Declarations | Unique avant et unique après  | multiples |  texte |
 | Déclarations  (Aide) avant de séquences et sous-séquences | Declarations | Unique après  | multiples |  texte |
 |  Infobulles | Tooltip, texte souligné | infobulle |infobulle |  représentée par une étoile |
 |  Séquence |   Sequence | Texte |Texte | Texte |
 |  Sous-séquence |  Subsequence |Texte  | Texte |  Texte  |
 |  Fil d’Ariane |  Breadcrumb | statique / affichage séquence en web | navigable|  Sans objet  |
  |-----------------|----------|----------|----------|
 |  **Tableaux** | |    |    |  
 |  Tableaux simples | Table  |tableaux | tableaux| tableaux, nb de lignes fixes    |
 |  Tableaux dynamiques | rosterForLoop |Tableaux dynamiques| Tableaux dynamiques| tableaux, nb de lignes paramétrables
 |  Tableaux dynamiques personnalisés |  | | | ok   |  
  |------------------------------|----------|----------|----------|
 |  **Boucles** |  |    |   |  
 |  Boucles - ensemble de questions répétées (principale ou liée, min et max collectés ou fixes) | Loop | ensemble de questions répétées | ensemble de questions répétées| Répétition d'un ensemble de questions, nb occurrences paramètrables |
 |  Boucles préremplies | <span style='color:#ff6251;font-weight:bold'>à tester </span>  | | |  ok  |
 |  Liens deux à deux (composition familiale) | Pairwise | affichage liens  | affichage liens | sans objet  |
 |------------------------------|----------|----------|----------|
 |  **Éléments dynamiques** |   |   |   |  
 |  Contrôles de cohérence, personnalisés |  ok  || |   sans objet |
  |  Contrôles dans les tableaux dynamiques |  <span style='color:#ff6251;font-weight:bold'>en cours</span> || |   sans objet |  
 |  Contrôles de format  |  ok |  | | sans objet |
 |  Les filtres |  ok |  | | affichage d’un texte alternatif |
 |  La personnalisation |  ok  | | |  ok |
 |  Etapier |  ok  | affichage lorsque le questionnaire est découpé par séquence | sans objet  |  sans objet |
  |   |   |   |   |  

## Perspectives

<span style='color:#555ff8;font-weight:bold'>**À développer coté Pogues-Eno pour être proposé dans la filière**</span>

- Rond-point  (composant Lunatic  roundabout) décrit dans Pogues et Eno : **T2 2024**
- Rond-point "enrichi" (spécifier le libellé du bouton) : **non MVP 2025**
- Nouveaux composants (description des séquences, sous-séquences, "pourquoi ces questions") / composant multipage : après 2024. **Non MVP 2025**
  
 <span style='color:#555ff8;font-weight:bold'>**À développer coté Lunatic**</span>

- [Mode management](https://github.com/InseeFr/Bowie/issues/46) **MVP 2025**

 <span style='color:#555ff8;font-weight:bold'>**À développer coté orchestrateur**</span>

- Paradonnées Queen **non MVP 2025**
- Paradonnées StromaeV3 **MVP 2025**

<span style='color:#555ff8;font-weight:bold'>**À planifier**</span>  

- [Listes dynamiques](https://github.com/InseeFr/Bowie/issues/52)
- Queen dans Public Enemy
- [Questions obligatoires](https://github.com/InseeFr/Bowie/issues/84)

<span style='color:#555ff8;font-weight:bold'>**Non planifiés**</span>  

- Boucles de boucles
- Tirage aléatoire parmi une boucle (pas avant au mieux 2025)
