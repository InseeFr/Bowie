# Détail d'un questionnaire

Page permettant de saisir les métatonnées du questionnaires. Elle est composée des champs
<div class="annotate" markdown>

- `Titre du questionnaire` : Libellé du questionnaire
- `Nom court` : Identifiant métier (arbitraire actuellement car pas d'impact sur le reste du processus)
- `Série` (optionel) : Valeurs provenant d'RMéS. Il faut sélectionner l'enquête correspondante telle que décrite dans [Bauhaus :material-open-in-new:](https://gestion-metadonnees.insee.fr/)
- `DDI Agency` : Non modifiable pour l'instance de l'Insee. Valeur technique pour la génération du DDI 
- `Mode de collecte` : Quatre modes de collecte sont disponibles, CAPI(1), CATI(2), CAWI(3) et PAPI(4). Possibilité de sélectionner une ou plusieurs modalités.
- `Spécification dynamique` : la gestion de l'affichage ou non des objets ("Redirection" ou "Filtre")
- `Spécification des formules` : le langage utilisé pour les contrôles, filtres, calculs de variables ("XPath" ou "VTL")

</div>

1.  pour les enquêtes en face-à-face par l'intermédiaire d'un enquêteur
2.  pour les enquêtes par téléphone
3.  pour les enquêtes via Internet
4.  pour les enquêtes avec questionnaire au format papier

!!! warning

    Les options "Redirection" et "XPath" sont réservées exclusivement aux questionnaires intégrés à la plateforme de collecte Coltrane.

