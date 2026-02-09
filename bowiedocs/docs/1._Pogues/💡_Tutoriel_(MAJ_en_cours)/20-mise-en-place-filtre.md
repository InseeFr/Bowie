# Mise en place d'un filtre

!!!note

    À partir de cette section, il est utile de s'être familiarisé avec VTL en parcourant [le guide dédié](../💻_VTL/index.md) et le consultant régulièrement.

L'utilisation de filtres permet de déterminer l'affichage (ou non) d'une ou plusieurs séquences, sous-séquences ou questions.

Pour cela, nous allons nous appuyer sur la fonctionnalité "Filtre" de Pogues mais aussi sur le langage VTL pour l'expression de la condition.

Pour créer un filtre, il suffit de cliquer sur le bouton "+ Filtre" dans la barre d'action. La fenêtre modale qui s'ouvre affiche les champs :

- _Description_ : un libellé qui sera visible sur le questionnaire papier et remplacera le filtre dynamique des questionnaires web ou enquêteur
- _Condition d'affichage_ : l'expression VTL qui si elle est __vraie__ déclenche l'affichage des éléments filtrés
- _Début_ : détermine où commence la couverture du filtre
- _Fin_ : détermine où termine la couverture du filtre.

Le cas d'usage dans le cadre de ce tutoriel est l'affichage de la question (["Quelle est votre nationalité étrangère ?"](../15-creation-qcm/#creation-dune-question-qcu-recherche-sur-liste)) conditionné à la réponse à la question qui précède (["Quelle est votre nationalité ?"](../15-creation-qcm/#creation-dune-question-a-choix-multiple)). On veut donc s'assurer que la 3è modalité associée à cette question (`T_NATIO`) a été sélectionnée par le répondant  à la bonne valeur : `T_NATIO3` ici qui est le code associé à la modalité "Etrangère" doit valoir `TRUE`.

Notre condition d'affichage est donc :

    ```vtl
    $T_NATIO3$ = true
    ```

!!!tip

    Bien noter ici :

      - la variable est entourée du caractère `$`
      - la formule VTL soit être cohérente avec le type de variable. Ici on collecte un booléen qui ne peut prendre que les valeurs true, false et null.

!!!note

    En toute logique, le filtre que l'on est en train de créer va masquer les éléments choisis dès que la variable sous-jacente `T_NATIO3` aura une valeur différente de `true` :nerd:

Il nous reste à préciser que le filtre à pour champ d'action la question `T_NATIONETR`. Il faut bien noter que les éléments choisis dans _Début_ et _Fin_ sont __inclus__ dans le périmètre du filtre.

![Configuration du filtre](../../img/pogues/filtre-configuration.png)

!!! abstract "Pour aller plus loin"
    - [Les filtres](../🚀_Guide/25-filtres.md)

Le filtre que l'on vient de créer devient visible dans la vue d'ensemble du questionnaire (sur les éléments choisis dans _Début_ et _Fin_), on peut le modifier en cliquant dessus.

![Résultat du filtre](../../img/pogues/filtre-resultat.png)

