# Finalisation structure

À partir des fonctionnalités vues dans les précédentes section de ce tutoriel, nous sommes capables de continuer la création de la structure du questionnaire suivant le schéma suivant :point_down:.

| Type de structure | Description                                                                                                                | Réalisation      |
| ----------------- |:-------------------------------------------------------------------------------------------------------------------------- |:---------------- |
| Séquence          | MODULE1 - "Quelques informations sur vous"                                                                                 | :material-check: |
| Question          | PRENOM - "Quel est votre prénom ?" - Texte 40                                                                              | :material-check: |
| Sous-Séquence     | CARACTERISTIQUES - "Parlons de vous"                                                                                       | :material-check: |
| Question          | T_DATENAIS - "Quelle est votre date de naissance ?" - Date [AAAA-MM-JJ - 1901-01-01 - 2026-12-31]                          | :material-check: |
| Question          | T_SEXE - "Quel est votre sexe ?" - QCU                                                                                     | :material-check: |
| Question          | T_NATIO - "Quelle est votre nationalité ?" - QCM                                                                           | :material-check: |
| Question          | T_NATIONETR - "Quelle est votre nationalité étrangère ?" - QCU Recherche sur liste                                         | :material-check: |
| Sous-Séquence     | TRAVAIL - "Votre environnement de travail"                                                                                 | :material-check: |
| Question          | ACTIVITES - "Quel pourcentage de votre temps de travail consacrez-vous en moyenne à ces différentes activités ?" - Tableau | :material-check: |
| Question          | COMBIEN_PARTAGE - "Combien de personnes partagent votre bureau ?"      - Nombre [0-10]                                     |  :material-check:               |
| Sous-Séquence     | COLLEGUE - "Parlez-nous de votre collègue"                                                                                 |  :material-check:                |
| Question          | TEMPS_PARTIEL - "Votre collègue est-il à temps partiel ?" - QCU Oui-Non                                                    |                  |
| Question          | COLLABORATION - "Votre collègue travaille-t-il régulièrement avec vous ?" - QCU Oui-Non                                    |                  |
| Séquence          | MODULE2 - "Avis sur l'exercice"                                                                                            |  :material-check:                |
| Question          | APPRECIATION - "Avez-vous apprécié l'exercice ?" - QCU Oui-Non                                                             |                  |
| Question          | COMMENTAIRE - "Plus précisément, qu'est-ce qui vous a plu ou déplu ?" - Texte 500                                          |                  |