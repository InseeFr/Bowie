# Finalisation de la structure du questionnaire

À partir des fonctionnalités vues dans les précédentes section de ce tutoriel, nous sommes capables de continuer la création de la structure du questionnaire suivant le schéma suivant :point_down:.

| Type de structure | Description                                                                                                                | Réalisation      |
| ----------------- |:-------------------------------------------------------------------------------------------------------------------------- |:---------------- |
| Séquence          | MODULE1 - "Participation au questionnaire"                                                                                 | :material-check: |
| Question          | OKREP - "Souhaitez-vous répondre à ce questionnaire ?" - QCU Oui-Non                                                       | :material-check: |
| Séquence          | MODULE2 - "En savoir plus sur vous"                                                                                        | :material-check: |
| Question          | PRENOM - "Quel est votre prénom ?" - Texte 30                                                                              | :material-check: |
| Question          | ACTIVITES - "Quel pourcentage de votre temps de travail consacrez-vous en moyenne à ces différentes activités ?" - Tableau | :material-check: |
| Question          | CARRIERE - "Avez-vous déjà exercé les activités suivantes au sein de votre carrière ?" - QCM                               | :material-check: |
| Question          | COMBIEN_QUESTIONS - "Combien de questions souhaitez-vous spécifier dans Pogues ?" - Nombre [0-200]                         |                  |
| Question          | COMBIEN_PARTAGE - "Combien de personnes partagent votre bureau ?"      - Nombre [0-10]                                     |                  |
| Sous-Séquence     | COLLEGUE - "Parlez-nous de votre collège"                                                                                  |                  |
| Question          | TEMPS_PARTIEL - "Votre collègue est-il à temps partiel ?" - QCU Oui-Non                                                    |                  |
| Question          | COLLABORATION - "Votre collègue travaille-t-il régulièrement avec vous ?" - QCU Oui-Non                                    |                  |
| Séquence          | MODULE3 - "Votre questionnaire"                                                                                            |                  |
| Question          | DEBUT_TRAVAIL - "A quelle date avez-vous commencé à travailler" - Date [AAAA-MM-JJ - 1980-01-01 - 2022-01-01]              |                  |
| Séquence          | MODULE4 - "Avis sur l'exercice"                                                                                            |                  |
| Question          | APPRECIATION - "Avez-vous apprécié l'exercice ?" - QCU Oui-Non                                                             |                  |
