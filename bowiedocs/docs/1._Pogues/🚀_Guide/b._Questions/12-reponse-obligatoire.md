# Les réponses obligatoires

!!! abstract "Concept"

    - Les **variables structurantes** (indicateurs incontournables, base de filtres) de l’enquête peuvent être expliquées aux enquêteurs en formation (à quoi elles servent, comment inciter l’enquêté à répondre …). Cette **sensibilisation en amont** permet d’éviter les situations de blocage en cours d’entretien avec un enquêté avec des erreurs bloquantes ou **réponses obligatoires** (aussi appelées "variables obligatoires").

    - Utiliser les réponses obligatoires  avec **parcimonie**. Sur le web : les enquêtés ne peuvent pas poursuivre le questionnaire s’ils sont dans une situation où ils ne peuvent pas répondre facilement ou ne souhaitent pas répondre.

## Type de réponse supportant le caractère obligatoire

- ✅ Réponse `simple` (texte, date, nombre, booléen ou durée) [:octicons-file-symlink-file-16:](13-reponse-simple.md)
- ✅ Réponse `à choix unique` (QCU, liste déroulante) [:octicons-file-symlink-file-16:](15-reponse-choix-unique.md)
- ❌ Réponse `à choix unique` de type suggester-autocomplétion [:octicons-file-symlink-file-16:](15b-suggester.md)
- ❌ `Liens deux à deux` [:octicons-file-symlink-file-16:](16-liens-2a2.md)
- ❌ Réponse `à choix multiple` (cf. batterie de questions) [:octicons-file-symlink-file-16:](17-reponse-choix-multiple.md)
- ❌ `Tableau` [:octicons-file-symlink-file-16:](../Tableaux/index.md)


!!! danger "Ne fonctionne pas s'il y a un ["Préciser"](.././14-liste-codes.md/#ajouter-un-preciser) sur l'une des modalités"
    
    Actuellement on peut combiner dans Pogues Variable obligatoire et demande de clarification mais cela ne fonctionne pas en visualisation, le caractère obligatoire est KO. <br>
    Une modification à venir dans l'IHM permettra d'éviter cette spécification inopérante.


## Comportement dans le questionnaire

| Situation/Déclenchement | Comportement Stromae                                      | Comportement Queen                                              |
|:----------------------- | --------------------------------------------------------- | --------------------------------------------------------------- |
| 1er ou 2eme clic sur continuer  | Affichage du message standardisé + focus sur le 1er champ obligatoire ⛔| *On n'a pas le bouton continuer avant d'avoir rempli l'input* |
| 1er clic sur NSP/RF     | /                                                         | Affichage du message standardisé + bouton continuer grisé       |
| 2ème clic sur NSP/RF    | /                                                         | Pas d'effet du clic, le message reste affiché ⛔                |

⛔ : l'utilisateur ne peut plus poursuivre le questionnaire