# Les questions liens deux à deux

Ce type de question est aujourd'hui exclusivement réservée au **tronc commun des ménages** : elle permet de **collecter les liens familiaux** entre les différents habitants du logement. Elle se compose d'un ensemble de "listes déroulantes" demandant les liens entre tous les habitants du logement.

Renseigner :

- la _variable source du prénom_, 
- la _variable source du sexe_,
- la _liste de codes_ permettant de décrire les différents liens possibles.

La variable source du sexe n'est pas un attribut à renseigner obligatoirement pour faire fonctionner la question de type liens deux à deux. Toutefois, elle est indispensable pour accéder aux [variables globales décrivant les parents, enfants et conjoints](../Variables/variables-globales.md#variables-globales-issues-des-liens-deux-a-deux). 

![Création des liens 2 à 2](../../../img/pogues/creer-lien-2-2.png)

!!!tips La liste de codes pour les liens entre les habitants du logement au T1-2026
    La liste de codes à utiliser pour les liens entre les habitants du logement est maintenue par la division RTI et en partie internalisée dans les outils de l'atelier pour la fourniture des liens réciproques.
    Il est impératif de l'utiliser sans modifications.

    ![Liste de codes des liens 2 à 2 au T1-2026](../../../img/pogues/modalites-liens.png)


## Un exemple

Prenons un exemple avec une famille de 5 personnes : 

![Famille pour les liens](../../../img/pogues/famille-liens.png)

C'est Laura qui répond au questionnaire, elle déclare d'abord son conjoint, puis les enfants et termine par le grand-père. Elle déclare les liens sans se tromper :nerd: 

Voici les données telles qu'elles sont collectées :


![Matrice des liens](../../../img/pogues/matrice-liens.png)

Le format des données collectées lors d'une question de type lien deux à deux ne permet pas à ce jour de mobiliser simplement, en cours de collecte chaque lien, c'est pourquoi on met à votre disposition des variables globales permettant de mobiliser les principales informations utiles au questionnement (prénom et sexe des parents, prénom du conjoint, liste des prénoms des enfants).

!!!abstract "Pour aller plus loin"
    [Les variables globales issues des liens deux à deux](../Variables/variables-globales.md#variables-globales-issues-des-liens-deux-a-deux)