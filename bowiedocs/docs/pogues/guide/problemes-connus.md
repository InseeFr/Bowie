# Problèmes connus

Cette page recense les problèmes connus que l'on peut rencontrer en construisant un questionnaire dans Pogues.

Certains sont identifiés et seront prochainement corrigés, d'autres résultent tout simplement d'un problème dans l'utilisation des outils.

## Libellés

### Mon libellé affiche directement la formule VTL

> On se place dans le cas d'un libellé qui exploite via VTL des variables du questionnaires.

Si dans le questionnaire généré un libellé affiche directement la formule VTL, c'est tout simplement qu'il y a un problème avec celle-ci.

Il y a plusieurs causes possibles :

- au moins une variable mobilisée dans cette formule est en erreur (dans le cas d'une variable calculée) ou est tout simplement inexistante (il faut alors vérifier son nommage)
- un caractère spécial invisible s'est glissé dans la formule (souvent à la suite d'un copier / coller)
  - dans ce cas-là, il est préférable de réécrire la formule directement dans le champ correspondant dans Pogues
  - si l'on veut tirer parti du copier / coller, il faut coller une première fois dans l'application Bloc-notes de Windows (qui supprime les caractères spéciaux invisible), puis copier et enfin coller dans champ libellé de Pogues.

### Mon libellé ne s'affiche pas

S'il y a un espace ou une tabulation après le dernier caractère d'un libellé dans Pogues, celui-ci peut ne pas s'afficher dans le questionnaire généré. Supprimer cet espace ou cette tabulation corrige le problème.
