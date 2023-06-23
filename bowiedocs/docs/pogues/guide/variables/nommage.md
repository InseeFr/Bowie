# Nommage des variables

Une convention simple doit être appliquée pour le nommage des variables dans Pogues :

- on utilise des lettres simples en majuscule et des chiffres,
- on sépare les sections du nom par des tirets bas `_`,
- on n'utilise aucun espace.

Des exemples de bon usage :

```vtl
AGE

PROFESSION_CONJOINT

ACTIVITES_1
```

Par ailleurs, lorsqu'elles sont utilisées dans du code VTL, les noms des variables sont encadrés par des `$`. Par exemple, une variable nommé dans Pogues `AGE`, sera mobilisée en VTL par `$AGE$`.
