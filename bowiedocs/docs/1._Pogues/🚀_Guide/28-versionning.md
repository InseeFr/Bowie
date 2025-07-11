# La gestion de versions (OLD)

## Accéder à la liste de versions

Pour accéder à la liste des versions d'un questionnaire, il suffit de cliquer sur le bouton "Versions" dans un questionnaire Pogues.

![Bouton version](../../img/pogues/version-button.png)

La liste des versions est affichée dans une modale. Chaque version contient les infos suivantes :

- **Date/Heure** à laquelle la version a été enregistrée ;
- **Durée** écoulée depuis cette date ;
- **idep** de la personne ayant enregistré cette version.

![liste versions](../../img/pogues/list-versions.png)

!!! abstract "Règle de conservation des versions"
    - Tous les soirs, toutes les sauvegardes du jour, puis les 10 précédentes sont conservées. Au-delà, la dernière de chaque jour est conservée."

??? info "Précisions sur la dernière journée sauvegardée"
    Le "nettoyage" des versions pour les jours précédents est déclenché tous les soirs sauf le samedi et dimanche soir.
    
    **Exemple :** On est le 17/02/2025 à 15:00
    
    1. On va sur un questionnaire qui a été dernièrement modifié le 01/02/2025.
    2. On clique sur le bouton `Versions`, la modale s'ouvre.
    3. On observe une liste de 5 versions : 
        - 3 versions du 01/02/2025 à 09:30, 11:00 et 11:35
        - 1 version du 28/01/2025 à 14:00
        - 1 version du 04/01/2025 à 09:00
    4. On retourne sur le questionnaire, on l'édite, on sauvegarde. Un nouvelle version du questionnaire est donc créée.
    5. On clique sur le bouton `Versions`, la modale s'ouvre.
    6. On observe une liste de 6 version :
        - 1 version du 17/02/2025 à 15:02
        - 3 versions du 01/02/2025 à 09:30, 11:00 et 11:35
        - 1 version du 28/01/2025 à 14:00
        - 1 version du 04/01/2025 à 09:00

    - Si jamais on enregistre 16 version pour le 17/02, le lendemain il n'y aura plus que 10 version pour le 17/02 et autant que l'on veut pour le 18/02
    - Si jamais on enregistre 8 version pour le 17/02, le lendemain il y aura toujours les 8 version pour le 17/02, autant que l'on veut pour le 18/02 mais plus que 2 pour le 01/02 (11:00 et 11:35)

## Charger une ancienne version

On peut charger une version depuis la liste avec le bouton "Charger". <br>
Une confirmation apparaît "*Êtes vous sur ?*" avec deux choix <br>

- :heavy_check_mark: = charge la version associée
- :heavy_multiplication_x: = fait disparaître le message  

Si une modification du questionnaire est en cours, un avertissement est également affiché <br>
":warning: Vos modifications ne sont pas sauvegardées !"

Une fois la version chargée, on affiche le questionnaire Pogues. Quand on clique sur sauvegarder, cela crée une nouvelle version avec ces modifications.
