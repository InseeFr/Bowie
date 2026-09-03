---
search:
  boost: 2 
---

# Les contrôles

Un contrôle permet de vérifier la qualité des informations saisies au sein d'un questionnaire.

Deux types de contrôle sont implémentés :

- les contrôles de format (automatiques, et dépendant de la nature de la variable décrite dans Pogues)
- les contrôles de cohérence interne au questionnaire (éventuellement cohérence avec les données antérieures), décrits dans Pogues par le concepteur.

Il est possible de supprimer ou dupliquer un contrôle.

!!! danger "Les contrôles et filtres ne fonctionnent pas quand on fait une visualisation sur une sous partie du questionnaire : séquence, sous séquence ou question"
    Pour tester le bon fonctionnement des contrôles, on peut faire une visualisation et voir si ces derniers se déclenchent correctement.
    Il faut visualiser le questionnaire **dans son entièreté**. <br>

!!! tip "Recommendations"
    - Utiliser les erreurs bloquantes **avec parcimonie**. Sur le web : les enquêtés ne peuvent pas poursuivre le questionnaire s’ils sont dans une situation où ils ne peuvent pas répondre facilement ou ne souhaitent pas répondre.

    - Dans tous les cas, mettre un **message d’erreur explicite** et/ou une déclaration qui rappelle les conditions de déclenchement du contrôle.

    - Penser son questionnaire en **multi-mode** : les erreurs bloquantes que les enquêteurs peuvent éluder avec NSP/RF sont vraiment bloquantes en web.

    - Les contrôles sont des contrôles de cohérence sur **données remplies** et pas du contrôle de remplissage.

## Syntaxe

Dans l'onglet "Contrôles" de la question du questionnaire à partir de laquelle on veut appliquer le contrôle, renseigner :

- la `description` du contrôle : texte libre documentant le contrôle
- la `condition` (pour laquelle on affiche le message d'erreur)
- le `message d'erreur` : saisir ici le message d'erreur qui s'affichera à l'enquêté si la condition est remplie (à rédiger en VTL)
- la `criticité` :  choisir une criticité parmi
    - Avertissement (Non bloquant)
    - Erreur (Bloquant)

!!! example "Exemples de condition pour les contrôles"
    === "sans et avec gestion du null"
        ```
        if $VAR_NUMERIQUE$ < 10 then "1" else "2" ==> renvoie 2 si null
        ```
        ```
        if nvl($VAR_NUMERIQUE$,0) < 10 then  "1" else "0" ==> renvoie 1 si null
        ```
        ```
        nvl($VAR1_NUMERIQUE,0) + nvl($VAR2_NUMERIQUE$,0) > 0`
        ```
    === "variable externe"
        On doit convertir la variable en numérique pour la comparer à 0 par exemple
        ```
        if nvl($VAR2_NUMERIQUE_EXTERNE, "") <> 0 and cast($VAR2_NUMERIQUE_EXTERNE$,integer) > 0 then "1" else "0"
        ```
    === "case cochée"
        Pour un filtre par exemple
        ```
        nvl($QCM1$,false) = true
        ```
    === "modalité exclusive"
        Ici par exemple QCM4 ne peut pas être cochée si QCM1, QCM2, ou QCM3 l'est
        ```
        (nvl($QCM4$,false) = true and nvl($QCM3$,false) = true) or (nvl($QCM4$,false) = true and nvl($QCM2$,false) = true) or (nvl($QCM4$,false) = true and nvl($QCM1$,false) = true))
        ```
    === "durée"
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

Voir d'autres [exemples](../💻_VTL/2-guide-vtl.md/#cookbook)

## Comportements

### Avertissement (Non bloquant)
| Situation/Déclenchement | Comportement Stromae       | Comportement Queen         |
|:----------------------- | -------------------------- | -------------------------- |
| 1er clic sur continuer (Queen) ou changement page (Stromae) | Affichage du message       | Affichage du message       |
| 2ème clic sur continuer (Queen) ou changement page (Stromae)| Passage à la page suivante | Passage à la page suivante |
| 1er clic sur NSP/RF     | /                          | Passage à la page suivante |

### Erreur (Bloquant)

!!! abstract "Concept"
    Il s'agit de contrôles entre données remplies ! Un NSP/refus est une non-réponse donc ne peut pas déclencher un contrôle bloquant.

| Situation/Déclenchement | Comportement Stromae                          | Comportement Queen                            |
|:----------------------- | --------------------------------------------- | --------------------------------------------- |
| 1er clic sur continuer (Queen) ou changement page (Stromae) | Affichage du message + focus sur le 1er champ en erreur | Affichage du message + bouton continuer grisé |
| 2ème clic sur continuer | Focus sur le 1er champ en erreur    ⛔      | Bouton désactivé donc ne fait rien            |
| 1er clic sur NSP/RF     | /                                             | Passage à la page suivante |
  
⛔ : l'utilisateur ne peut plus poursuivre le questionnaire

## Exemples pratiques

### Non-réponse

Dans la plupart des cas, vérifier une potentielle non-réponse c'est vérifier que la variable sous-jacente n'a pas été valorisée. Il faut donc écrire un contrôle pour tester la **_nullité_**. <br> 

!!! example ""
    Dépendamment du [type de la variable](./Questions/13-reponse-simple.md), la formule VTL de conditionnant l'affichage du contrôle de non réponse est différente.

    === "Date - Nombre - Durée"
        Pour ces types, la formule VTL est simple avec seulement l'utilisation de [**isnull()**](../💻_VTL/1-fonctions-vtl.md/#isnull)
        ```
        isnull($VAR$)
        ```
    === "Texte"
        Comme pour le [Booléen](#__tabbed_2_3), il faut gérer aussi le cas où un répondant à commencé à remplir le champ mais a finalement effacé sa réponse. Dans ce cas la valeur de la variable n'est plus `null` mais `""`. <br>
        On peut gérer ça des deux manière suivantes : 
        ```
        isnull($VAR) or $VAR = ""
        ```
        Ou en utilisant la fonction [**nvl()**](../💻_VTL/1-fonctions-vtl.md/#nvl) :

        ```
        nvl($VAR, "") = ""
        ```
    === "Booléen"
        Comme pour le [Texte](#__tabbed_2_3), il faut gérer aussi le cas où un répondant à cocher la case mais a finalement décoché. Dans ce cas la valeur de la variable n'est plus `null` mais `false`. <br>
        On peut gérer ça des deux manière suivantes : 
        ```
        isnull($VAR) or $VAR = false
        ```
        Ou en utilisant la fonction [**nvl()**](../💻_VTL/1-fonctions-vtl.md/#nvl) :

        ```
        nvl($VAR, false) = false
        ```

### Contrôle de validité d'une adresse mail

Certains questionnaires peuvent collecter des informations de contact. Dans le cas d'une adresse _mail_, on veut pouvoir s'assurer de la justesse syntaxique de celle-ci. S'il n'existe pas de formule assurant la compatibilité à 100% avec la spécification initiale relative aux adresses mail, ce que l'on utilise dans la formule suivante permet d'empêcher la plupart des erreurs :

```
match_characters(
    $MAIL$,
    "^[A-Za-z0-9._+\-\']+@[A-Za-z0-9.\-]+\.[A-Za-z]{2,}$"
) = false
```

### Contrôle de validité d'un SIRET

!!! abstract "3 contrôles, chacun avec un but différent"
    - Vérification du format du Siret (14 caractères et uniquement des chiffres) : **Contrôle Siret de format**
    > Le Siret doit être composé uniquement de 14 chiffres
    - Vérification du Siren (9 premiers caractères) : **Contrôle Siret 1**
    > Les 9 premiers chiffres du numéro que vous avez renseigné ne correspondent pas à un numéro Siren.
    - Vérification du Siret sachant que le Siren est correct : **Contrôle Siret 2**
    > Les 9 premiers chiffres du numéro que vous avez renseigné correspondent à un numéro Siren, mais les 5 derniers font que l'ensemble n'est pas un numéro Siret.
   
???+ tip "Formule VTL"
    !!! warning "On se place dans le cas où le Siret est collecté à travers la variable `SIRET`"

    === "Contrôle Siret de format"
        ```
        not match_characters($SIRET$,"^[0-9]{14}$")
        ```
    === "Contrôle Siret 1"
        ```
        match_characters($SIRET$,"^[0-9]{14}$")
        and ((mod(
            cast(substr($SIRET$,1,1),integer)
            + cast(substr($SIRET$,2,1),integer)*2 -(if (cast(substr($SIRET$,2,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,3,1),integer)
            + cast(substr($SIRET$,4,1),integer)*2 -(if (cast(substr($SIRET$,4,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,5,1),integer)
            + cast(substr($SIRET$,6,1),integer)*2 -(if (cast(substr($SIRET$,6,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,7,1),integer)
            + cast(substr($SIRET$,8,1),integer)*2 -(if (cast(substr($SIRET$,8,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,9,1),integer)
        ,10)) <> 0)
        ```
    === "Contrôle Siret 2"
        ```
        match_characters($SIRET$,"^[0-9]{14}$")
        and ((mod(
            cast(substr($SIRET$,1,1),integer)
            + cast(substr($SIRET$,2,1),integer)*2 -(if (cast(substr($SIRET$,2,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,3,1),integer)
            + cast(substr($SIRET$,4,1),integer)*2 -(if (cast(substr($SIRET$,4,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,5,1),integer)
            + cast(substr($SIRET$,6,1),integer)*2 -(if (cast(substr($SIRET$,6,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,7,1),integer)
            + cast(substr($SIRET$,8,1),integer)*2 -(if (cast(substr($SIRET$,8,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,9,1),integer)
        ,10)) = 0)
        and ((mod(
            cast(substr($SIRET$,1,1),integer)*2 -(if (cast(substr($SIRET$,1,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,2,1),integer)
            + cast(substr($SIRET$,3,1),integer)*2 -(if (cast(substr($SIRET$,3,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,4,1),integer)
            + cast(substr($SIRET$,5,1),integer)*2 -(if (cast(substr($SIRET$,5,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,6,1),integer)
            + cast(substr($SIRET$,7,1),integer)*2 -(if (cast(substr($SIRET$,7,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,8,1),integer)
            + cast(substr($SIRET$,9,1),integer)*2 -(if (cast(substr($SIRET$,9,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,10,1),integer)
            + cast(substr($SIRET$,11,1),integer)*2 -(if (cast(substr($SIRET$,11,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,12,1),integer)
            + cast(substr($SIRET$,13,1),integer)*2 -(if (cast(substr($SIRET$,13,1),integer) > 4) then 9 else 0)
            + cast(substr($SIRET$,14,1),integer)
        ,10)) <> 0)
        ```
        __Explication du code__
        
        1. On vérifie que l'on a une chaîne de 14 chiffres
        2. On fait une grosse addition dont on vérifie si elle est égale à 0 modulo 10
        3. On a une action caractère par caractère : On regarde le chiffre et selon sa position, on le multiplie par 1 ou 2 ; lorsqu'on le multiplie par 2, si ça atteint ou dépasse 10, on enlève 9<br>
        *ex :* `7*2` donne `1+4 (formule de Luhn) = 14-9 (formule calculée ici)`
    
    Si on ne veut pas que ces contrôles se déclenchent dans le cas où le champ est vide, il faut rajouter au début de chacun la formule
    ```
    not (nvl($SIRET$,"")="") and ... 
    ```

### Contrôle de validité d'un SIREN

!!! abstract "2 contrôles, chacun avec un but différent"
    - Vérification du format du Siren (9 caractères et uniquement des chiffres) : **Contrôle Siren de format**
    > Le Siren doit être composé uniquement de 9 chiffres
    - Vérification du Siren (9 premiers caractères) : **Contrôle Siren**
    > Les 9 premiers chiffres du numéro que vous avez renseigné ne correspondent pas à un numéro Siren.

???+ tip "Formule VTL"
    !!! warning "On se place dans le cas où le Siren est collecté à travers la variable `SIREN`"
    === "Contrôle Siret de format"
        ```
        not match_characters($SIRET$,"^[0-9]{9}$")
        ```
    === "Contrôle Siren"
        ```
        match_characters($SIREN$,"^[0-9]{9}$")
        and ((mod(
            cast(substr($SIREN$,1,1),integer)
            + cast(substr($SIREN$,2,1),integer)*2 -(if (cast(substr($SIREN$,2,1),integer) > 4) then 9 else 0)
            + cast(substr($SIREN$,3,1),integer)
            + cast(substr($SIREN$,4,1),integer)*2 -(if (cast(substr($SIREN$,4,1),integer) > 4) then 9 else 0)
            + cast(substr($SIREN$,5,1),integer)
            + cast(substr($SIREN$,6,1),integer)*2 -(if (cast(substr($SIREN$,6,1),integer) > 4) then 9 else 0)
            + cast(substr($SIREN$,7,1),integer)
            + cast(substr($SIREN$,8,1),integer)*2 -(if (cast(substr($SIREN$,8,1),integer) > 4) then 9 else 0)
            + cast(substr($SIREN$,9,1),integer)
        ,10)) <> 0)
        ```
    
    Si on ne veut pas que ces contrôles se déclenchent dans le cas où le champ est vide, il faut rajouter au début de chacun la formule
    ```
    not (nvl($SIREN$,"")="") and ... 
    ```

### Contrôle de validité d'un RNA

!!! abstract "Le format attendu est un code avec les contraintes suivantes dans l'ordre"

    1. Commence par 'W'
    2. 1 chiffre
    3. 1 caractère (lettre ou chiffre)
    4. Suite de 7 chiffres. 

    **=> Un contrôle suffit.**

???+ tip "Formule VTL pour le contrôle du RNA"
    !!! warning "On se place dans le cas où le RNA est collecté à travers la variable `RNA`"

    ``` title="Contrôle RNA"
    not(match_characters($RNA$,"^W\d[\da-zA-Z]\d{7}$"))
    ```

    Si on ne veut pas que ces contrôles se déclenchent dans le cas où le champ est vide, il faut rajouter au début de chacun la formule
    ```
    not (nvl($RNA$,"")="") and ... 
    ```

## Questionnaire exemple

Pour référence, des questionnaires illustrant ces contrôles sont disponibles dans l'environnement de demo, sous le timbre *DOCUMENTATION*.

- Un [questionnaire implémentant les contrôles de Siret, Siren et Rna](https://conception-questionnaires-demo.insee.fr/questionnaire/m4tmy4kl) 
- Un [questionnaire similaire](https://conception-questionnaires-demo.insee.fr/questionnaire/m74nlrpj) où les contrôles ne se déclenchent aussi quand le champ est vide 