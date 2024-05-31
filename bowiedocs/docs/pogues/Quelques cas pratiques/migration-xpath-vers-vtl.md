# XPath et VTL, les différences

Ce document est un résumé permettant de traduire rapidement quelques fonctions ou syntaxes fréquemment utilisées dans les questionnaires entreprises saisis dans Pogues.

!!! note

    Pour (re)découvrir de façon plus approfondie et détaillée le langage VTL, [le guide VTL de référence est ici](vtl.md).

## Changements au niveau du langage

### Quelques opérateurs identiques

| Opérateur ou fonction | Xpath | VTL |
| --- | ----- | -------- |
| A est égal à B | A = B | A = B|
| A plus B| A + B | A + B|
| A moins B| A - B | A - B|
| A fois B| A * B | A * B|
| et logique | and | and |
| ou logique | or | or |

### Quelques opérateurs différents

| Opérateur ou fonction | Xpath | VTL |
| --- | ----- | -------- |
| A différent de B | A != B | A <> B|
| A divisé par B| A div B | A / B|
| sous-chaine de longueur 2, à partir du 1er caractère | substring(A,1,2) | substr(A,1,2)|
| concaténer A, B   | concat(A,B ) | A \|\| B |
| nullité (cf.  infra) | A = '' | isnull(A)|

### Utilisation de texte

Dans les contrôles ou les filtres décrits dans Pogues, on n'utilise plus (comme c'était le cas en Xpath) les simples `'` mais des guillemets `"`.

__Exemples__ :

- Filtre : `$VAR_TEXTE$ = "1" or $VAR_TEXTE$ ="2"`
- Contrôle : `$VAR_TEXTE$ = "1" and $VAR_NUMERIQUE$ > 1000`

## Changements dûs au format des variables (passage XForms -> Lunatic)

Le format des variables a évolué ce qui conduit à quelques évolutions dans la manière de formuler filtres ou contrôles.

### Nature des modalités de réponse aux QCM

En VTL, on ne retourne plus des "0" / "1" ou des "" / "1" pour les modalités de réponse à un QCM, mais __true__ si une modalité est cochée, __null__ ou __false__ si elle ne l'est pas. Cf. partie "les contrôles dans les QCM".

### Comprendre et gérer le vide et la nullité

#### Généralités

En xforms, la non-réponse était systématiquement une chaîne vide quel que soit le format.
Dans le format Lunatic en revanche, un champ qui n’est pas encore rempli par le répondant est de valeur __"null"__, que ce soit un champ nombre, texte, un QCU, un QCM etc.
Quand le répondant saisit une réponse, on va collecter un nombre, du texte, un booléen (valeurs true/false, cf. supra).
:warning: Lorsque le répondant saisit une réponse puis l'efface, le champ collecté n'est pas systématiquement remis à __null__ : il redeviendra __null__ pour un champ nombre mais vaudra "" pour du texte, et false pour une modalité de QCM décochée.

| Champ collecté | jamais saisi | répondu / coché |  effacé/décoché |
| -------- | -------- | -------- | -------- |
| Nombre  | null | 123 | null |
| Texte   | null | "xyz" | "" |
| Modalité de QCM   | null | true | false |
| Modalité de QCU   | null | un code (décrit dans Pogues) | impossible |

#### Sommer des variables

Quand on manipule des variables numériques en VTL, il faut se prémunir de ce null ou ce "" puisqu'en VTL, la valorisation de VAR1_NUMERIQUE + VAR2_NUMERIQUE, si VAR2_NUMERIQUE est non rempli, vaudra null (alors qu'on pourrait s'attendre à ce que la somme soit VAR1_NUMERIQUE).
Pour cela, on utilise la fonction __nvl__ qui permet de proposer une valeur en cas de null ou de "" :  nvl(\$MA_VARIABLE$, "valeur si nulle") c'est-à-dire : si \$MA_VARIABLE$ n'est pas renseignée, lui affecter la valeur si nulle, sinon lui affecter \$MA_VARIABLE$.

__Exemple__:

- `$VAR1_NUMERIQUE$ + $VAR2_NUMERIQUE$` => `nvl($VAR1_NUMERIQUE$,0) + nvl($VAR2_NUMERIQUE$,0)`

#### Tester la nullité/le vide

On peut vouloir détecter des potentielles non-réponses (par exemple pour ne pas déclencher un contrôle entre 2 variables VAR_A et VAR_B, si une des 2 variables n'est pas renseignée). Pour cela, on va devoir tester la nullité des variables et, en fonction de la nature de la variable collectée, s'assurer que l'on n'a pas aussi une chaîne vide.
Plusieurs syntaxes sont possibles :

- `isnull($VAR_NUMERIQUE$) (pour les variables numériques)`
- `isnull($VAR_TEXTE$) or $VAR_TEXTE$="" (pour les textes).`
- `isnull($VAR_QCM1$) or not $VAR_QCM1$ (pour les modalités de QCM).`
- `isnull($VAR_QCU$) (pour un QCU)`

On peut également tirer partie de la fonction __nvl__ :

- `nvl($VAR_TEXTE$, "") = ""`
- `nvl($VAR_QCM_1$, false)`

### Personnaliser un libellé

Trois éléments assez différents de Xpath :

- on utilise l’opérateur VTL __\||__ qui permet de concaténer des chaînes de caractères, ou une chaîne de caractères et une variable.
- pour être utilisées dans un libellé, les variables numériques collectées doivent être converties en chaînes de caractères (fonction __cast__)
- les variables externes, _quelle que soit leur nature_, sont vues comme des variables Texte, qui peuvent donc être utilisées dans des libellés (de questions, de déclarations, de messages d'erreur)

__Exemples__ :

- `"Hello" || $VAR_TEXTE$`
- `"En " || $VAR_TEXTE_EXTERNE$ || ", votre activité est-elle toujours " || $VAR_TEXTE_EXTERNE2$ || " ?"`
- `"Votre chiffre d'affaires est de " || cast($VAR1_NUMERIQUE$,string) || " euros et votre effectif de " ||  cast($VAR2_NUMERIQUE$,string) || " personnes".`
- `"Vous venez de déclarer un chiffre d'affaires de " || cast($VAR1_NUMERIQUE$,string) || " euros alors qu'il était de " ||  cast($VAR2_NUMERIQUE_EXTERNE$,string) || " euros l'an dernier".`
ou
 `"Vous venez de déclarer un chiffre d'affaires de " || cast($VAR1_NUMERIQUE$,string) || " euros alors qu'il était de " ||   $VAR2_NUMERIQUE_EXTERNE$ || " euros l'an dernier".`

### Contrôles et variables calculées

Il est assez simple d'écrire des contrôles ou de calculer des variables à partir des données collectées ou externes dès lors qu'on dispose des opérateurs (cf. infra), qu'on a compris le principe de la nullité et qu'on connaît la nature des variables, en particulier celles des variables externes.

__Exemples__ :

- `sans gestion du null : if $VAR_NUMERIQUE$ < 10 then "1" else "2" ==> renvoie 2 si null`
- `gestion du null : if nvl($VAR_NUMERIQUE$,0) < 10 then  "1" else "0" ==> renvoie 1 si null`
- `variable externe (on doit convertir la variable en numérique pour la comparer à 0 par exemple): if nvl($VAR2_NUMERIQUE_EXTERNE, "") <> 0 and cast($VAR2_NUMERIQUE_EXTERNE$,integer) > 0 then "1" else "0"`
- `$VAR_SOMME$ = nvl($VAR1_NUMERIQUE,0) + nvl($VAR2_NUMERIQUE$,0)`

### Contrôles dans les QCM

Dans la nouvelle filière, on ne retourne plus des 0 / 1 pour les modalités de réponse à un QCM, mais des true si une modalité est cochée, null si elle ne l'est pas et false si elle est décochée.
Les contrôles ou filtres impliquant ces variables doivent prendre en compte ces aspects.

__Exemples__ :

- tester que QCM1 est cochée (pour un filtre par exemple) =>  `nvl($QCM1$,false) = true`
- tester une modalité exclusive (ici par exemple QCM4 ne peut pas être cochée si QCM1, QCM2, ou QCM3 l'est) => `(nvl($QCM4$,false) = true and nvl($QCM3$,false) = true) or (nvl($QCM4$,false) = true and nvl($QCM2$,false) = true) or (nvl($QCM4$,false) = true and nvl($QCM1$,false) = true))`

## Et si le questionnaire ne peut pas être visualisé ou se visualise mal ?

- Si la visualisation du questionnaire ne fonctionne pas, il est possible de visualiser chaque séquence/sous-séquence l'une après l'autre, afin de déterminer quelle séquence/sous-séquence pose un problème, puis quelle question.
- Si une question filtrée s'affiche à tort, c'est que le filtre est incorrect (variable mal décrite, inexistante)
- Si es déclarations n’apparaissent pas, penser à vérifier que le(s) mode(s) de collecte est(sont) bien coché(s).
