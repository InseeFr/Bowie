# Documentation de Bowie

Cette branche contient la documentation de Bowie, l'atelier de conception d'enquêtes.

## Contribuer

Le site utilise [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) (lui même bâti sur [MkDocs](https://www.mkdocs.org/)).

Les pages sont de simples documents Markdown, la navigation est générée à partir de l'arborescence des dossiers et fichiers sous `/bowiedocs`.

L'édition du site passe donc par deux étapes :

- la modification des pages voire de la structure arborescente,
- la génération du site à partir de ces fichiers.

Les modifications commitées sont automatiquement publiées.

### Mise en place des outils

Il est nécessaire de mettre en place certains outils pour visualiser le site avant la génération, et pour la génération elle-même.

#### Sur son poste

A minima sont nécessaires :

- une version récente de Python (par exemple 3.10)
- l'installation des dépendances à MkDocs
  - pour ce dernier point, on utilise ici Poetry

Une fois poetry installé, il suffit de lancer la commande `poetry install` à la racine du projet.

#### Sur le datalab

Lancer un environnement pré-configuré sur le datalab [en cliquant sur ce lien](https://datalab.sspcloud.fr/launcher/ide/vscode-python?autoLaunch=false&init.personalInit=%C2%ABhttps%3A%2F%2Fraw.githubusercontent.com%2FInseeFr%2FBowie%2Fpages%2Finit.sh%C2%BB).

Une fois dans VSCode:

- ouvrir un terminal (F1 > Terminal: Create new)
- coller `export PATH="/home/onyxia/.local/bin:$PATH"` puis entrée

#### Utiliser MkDocs

Une fois tout bien configuré en suivant une des méthodes précédentes, vous pouvez commencer à travailler sur le site (cf. la documentation donnée au paragraphe "Contribuer" plus haut.)

Pour visualiser les changements apportés, il faut (toujours dans un terminal) lancer la commande suivante à la racine du dossier de base `Bowie`:

`bash serve.sh`

qui va lancer un serveur local permettant de voir le fonctionnement du site.

#### Publier les changements

Pour publier les changements (après avoir bien sûr commité les changements dans le fichiers source eux-mêmes), il faut produire le suite lui-même.

Pour ça, il suffit de se placer à la racine du dossier `Bowie` puis de lancer la commande suivante:

`bash build.sh`

Le script va produire un nouveau dossier `docs` à la racine qui contient le nouveau site généré.

On peut ensuite commiter et pousser les changements

- `git add *` pour ajouter les fichiers modifiés, ce qui inclut les fichiers HTML générés,
- les classiques `git commit -m "Votre message de commit"` puis `git push`.

La publication des nouveautés sur le site se fait ensuite automatiquement via GitHub Pages (configuré sur le repo de Bowie).
