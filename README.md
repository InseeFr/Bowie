---
description: >-
  Ce document est destiné aux concepteurs de questionnaires d’enquête. Il a pour
  objectif de définir le cadre et les standards actuels de la modélisation d’un
  questionnaire d’enquête (web et papier).
---

# Contexte et choix

| Version | Date    |
| ------- | ------- |
| 1       | 05/2022 |

Eno est un générateur d’instruments de collecte qui permet de réaliser des questionnaires au format web (depuis 2015), au format pdf (depuis fin 2018), dans un format dit « spécifications » et au format « poste enquêteur » (depuis 2019). Les questionnaires sont générés à partir de leur description formelle spécifiée dans le standard DDI (Data Document Initiative, dont l’objectif est de décrire et conserver les métadonnées sur les enquêtes statistiques). Eno est un outil de génération automatique : il ne propose pas de service de développement de questionnaire sur mesure, ce qui peut conduire à adapter certains questionnaires.

* Intégrer la filière métadonnées a pu être ou est l’occasion de revoir le questionnaire, la formulation et la présentation des questions pour les rendre plus lisibles, plus conformes aux standards d’interrogation ;
* L’utilisation du standard DDI nécessite parfois de revoir le questionnaire, et de formaliser sa description ;
* Les choix génériques de mise en forme (couleurs, polices, disposition verticale des questions) ne peuvent faire l’objet de modifications sur mesure ;
* Enfin, comme décrit plus loin, la génération du questionnaire papier ET du questionnaire web ET du questire pour le poste enquêteur à partir de la même description peut nécessiter des ajustements des formulations ou des pratiques (présence d’info-bulles, consignes, etc.).

Pour générer cette description formelle en DDI, les concepteurs d’enquêtes utilisent Pogues, un outil permettant une saisie conviviale du questionnaire et générant les métadonnées correspondantes au format DDI. Pogues appelle les web services Eno, ce qui permet au concepteur de visualiser immédiatement le questionnaire sous différents formats (web, pdf, spécifications, poste enquêteur), avec des choix de paramètres par défaut.

À l’issue des travaux de saisie effectués avec Pogues (voire, si nécessaire, dans le DDI), le questionnaire peut être généré et déployé sur une infrastructure de collecte.&#x20;

## Une mise en forme standardisée, pourquoi ?

Le développement d’Eno, c’est-à-dire la construction d’un outil de génération de questionnaire commun à toutes les enquêtes (historiquement enquêtes entreprises) a facilité la standardisation d’un certain nombre de choix de conception, de structure, et de mise en forme des questionnaires. Ces choix relèvent souvent des bonnes pratiques, et constituent un cadre pour la mise en œuvre de questionnaires homogènes.

Une liste de « principes de conception de questionnaire auto-administré » a été énoncé par Rebecca L. Morrison (Census Bureau) et repris dans différents ouvrages (Designing and conducting business surveys, Snijkers and al.). Bien qu’axés enquêtes entreprises, ces principes sont proches de ceux énoncés dans le contexte des enquêtes ménages. Ils mettent l’accent sur **l’homogénéité des questionnaires, la cohérence visuelle, et la facilité de navigation** : la mise en forme est au service du fond, c’est un marqueur visuel (du type de questions, du format…) et une aide à la présentation structurée de l’information. En conséquence, les choix de mise en forme par l’outil Eno privilégient ces aspects (cohérence, structure), plutôt qu’une trop grande souplesse de mise en forme, susceptible de nuire à la clarté de l’information. L’harmonisation et la standardisation sont un gain, tant pour les temps de conception et développement qu’en termes d’image de l’Institut. À ce titre, il est donc important de maintenir ce cadre.&#x20;

## Que sait faire Eno ?

Eno est un générateur, produisant des instruments de collecte et notamment des questionnaires. Ces derniers sont générés à partir de leur description formelle spécifiée dans le standard DDI (Data Document Initiative, dont l’objectif est de décrire et conserver les métadonnées sur les enquêtes statistiques).

En 2021, Eno génère :

* un format de sortie Xforms, visualisable grâce à Orbeon, et destiné à la collecte web (format qui devient obsolète) ;
* un format de sortie fo, transformé en PDF par un module Courrier et destiné à la collecte papier ;
* un format de sortie XML Lunatic, transformé en Json en dehors de Eno, et destiné à la collecte en face-à-face, par téléphone et par web ;
* un format de sortie dit « spécifications », format odt, destiné aux concepteurs d’enquête ou aux relecteurs du questionnaire.

