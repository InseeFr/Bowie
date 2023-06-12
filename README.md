# Documentation de Bowie, atelier de conception

TODO :

- [ ] Méthodo
    Eléments d'Anne Z:\Méthodologie\standard_Eno_concepteurs_màj2021.md
    → premier doc "conception/guide-conception"
    → encore de réécriture par Anne
- [ ] Non réponse
    https://intranet.insee.fr/jcms/17424176_SocialQuestion/infos-sur-la-non-reponse


Autres docs :

https://intranet.insee.fr/jcms/16002409_DBWikiPage/eno-utilisation-du-generateur-filiere-unique-hors-coltrane-et-parametres

https://intranet.insee.fr/jcms/5569037_DBWikiPage/documentation-des-outils-/-guides-utilisateurs-/-circuits

## Contribuer

Le site utilise [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) (lui même bâti sur [MkDocs](https://www.mkdocs.org/)).

Les pages sont de simples documents Markdown, la navigation est générée à partir de l'arborescence des dossiers et fichiers sous `/bowiedocs`.

### Mise en place des outils

#### Sur son poste

<TODO>

#### Sur le datalab

Lancer un environnement pré-configuré sur le datalab:

https://datalab.sspcloud.fr/launcher/ide/vscode-python?autoLaunch=false&init.personalInit=%C2%ABhttps%3A%2F%2Fraw.githubusercontent.com%2Fromaintailhurat%2FBowie%2Fpages%2Finit.sh%C2%BB

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

On peut ensuite commiter et pousser les changements (`git commit` puis `git push`).