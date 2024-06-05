# Les contrôles

Un contrôle permet de vérifier la qualité des informations saisies au sein d'un questionnaire. On peut également parler de contrôles de cohérence interne au questionnaire. Cela peut inclure la cohérence avec les données antérieures.

Côté visualisation web du questionnaire un contrôle se déclenche au clic sur suivant lorsque la condition est vraie.

## Syntaxe

Dans l'onglet "Contrôles" de la question du questionnaire à partir de laquelle on veut appliquer le contrôle, renseigner :

- la _description_ du contrôle : texte libre documentant le contrôle
- la _condition_ (pour laquelle on affiche le message d'erreur), en VTL (<[https://inseefr.github.io/Bowie/pogues/guide/vtl](https://inseefr.github.io/Bowie/pogues/Le%20VTL%20dans%20Pogues/vtl/)/> et <[https://inseefr.github.io/Bowie/pogues/guide/migration-xpath-vers-vtl](https://inseefr.github.io/Bowie/pogues/Le%20guide/migration-xpath-vers-vtl/)/>)
- le _message d'erreur_ : saisir ici le message d'erreur qui s'affichera à l'enquêté sur le questionnaire web si la condition est remplie (en VTL)
- la _criticité_ : comme pour le type de déclaration, il n'y a actuellement pas de différence pour le questionnaire ou l'enquêté entre les 3 criticités mais renseigner celle qui paraît la plus appropriée :
   
    - Information
    - Avertissement
    - Erreur

Valider

Il est  possible de supprimer ou dupliquer un contrôle.

## Exemples de condition

- `sans gestion du null : if $VAR_NUMERIQUE$ < 10 then "1" else "2" ==> renvoie 2 si null`
- `gestion du null : if nvl($VAR_NUMERIQUE$,0) < 10 then  "1" else "0" ==> renvoie 1 si null`
- `variable externe (on doit convertir la variable en numérique pour la comparer à 0 par exemple): if nvl($VAR2_NUMERIQUE_EXTERNE, "") <> 0 and cast($VAR2_NUMERIQUE_EXTERNE$,integer) > 0 then "1" else "0"`
- `nvl($VAR1_NUMERIQUE,0) + nvl($VAR2_NUMERIQUE$,0) > 0`
- tester que QCM1 est cochée (pour un filtre par exemple) =>  `nvl($QCM1$,false) = true`
- tester une modalité exclusive (ici par exemple QCM4 ne peut pas être cochée si QCM1, QCM2, ou QCM3 l'est) => `(nvl($QCM4$,false) = true and nvl($QCM3$,false) = true) or (nvl($QCM4$,false) = true and nvl($QCM2$,false) = true) or (nvl($QCM4$,false) = true and nvl($QCM1$,false) = true))`
- tester une durée :
 ```
// valeur initiale de DUREE : PT12H30M
cast(
    replace(
        replace(
            replace($DUREE$, "PT", ""), // "12H30M"
        "M", ""),                       // "12H30"
    "H", "."),                          // "12.30"
number)                                 // 12.30
> 7.3                                   // true
```

Voir aussi : [https://inseefr.github.io/Bowie/pogues/Le%20VTL%20dans%20Pogues/vtl/#controles_1](https://inseefr.github.io/Bowie/pogues/Le%20VTL%20dans%20Pogues/vtl/#dates)
