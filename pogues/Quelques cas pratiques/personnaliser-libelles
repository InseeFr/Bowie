#  Personnaliser un libellé

Pour personnaliser un libellé de variable, de déclarations, de séquences ou sous-séquences, trois éléments sont à garder en mémoire :

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
 
