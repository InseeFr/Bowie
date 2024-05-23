# Création d'une question de type Réponse simple

Si on créé une question de type **Réponse simple**, renseigner :

- le caractère Obligatoire de la réponse : cochable, décochable. En 2024, l'information n'a pas d'effet sur l'affichage de la question au sein du questionnaire.
- le type de réponse :
  - Texte, Date, Nombre, Booléen, Durée
- si type de réponse=**Texte**, renseigner la taille maximale de la réponse en nombre de caractères, le motif (non fonctionnel pour l'instant, il permettra de spécifier des expressions régulières comme un Siret, un mèl etc.)
- si type de réponse=**Date**, renseigner le format de sortie parmi AAAA-MM-JJ, AAAA-MM et AAAA ainsi qu'un minimum et un maximum
- si type de réponse=**Nombre**, renseigner le minimum et le maximum attendu, la précision (nombre de chiffres après la virgule, par défaut : aucun), l'unité de mesure
- si type de réponse=**Booléen**, on ne renseigne rien pour l'instant et on se retrouve avec une unique cache à cocher cochable/décochable.
- si type de réponse=**Durée**, renseigner le format de sortie parmi heures-minutes ou années-mois

Valider
