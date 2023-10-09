# Contexte et lexique 

Eno est un générateur d’instruments de collecte qui permet de réaliser des questionnaires au format web, au format "poste enquêteur", au format pdf, et dans un format dit "spécifications".

Les modèles de questionnaires sont générés à partir de leur description formelle spécifiée dans le standard DDI (Data Document Initiative, dont l’objectif est de décrire et conserver les métadonnées sur les enquêtes statistiques). Cette description nécessite parfois de revoir le questionnaire, afin de mieux formaliser sa description. 

Pour générer cette description formelle en DDI, les concepteurs d’enquêtes utilisent Pogues, un outil permettant une saisie conviviale du questionnaire et générant les métadonnées correspondantes au format DDI. 

## Les paramètres  

Eno est un moteur générique mais il propose un ensemble de paramètres prenant en compte les spécificités de certains questionnaires ou de certains modes de collecte : certains paramètres permettent ainsi, à partir d’une même version de générateur et d’un même DDI, d’avoir des questionnaires standards mais légèrement personnalisés, un exemple basique étant la possibilité d’afficher ou non les numéros des questions ; d’autres paramètres répondent à des besoins des orchestrateurs ou des types de collecte.

## Pogues et Eno, deux outils indissociables 

Pogues appelle les web services Eno, et avec des choix de paramètres par défaut, il permet au concepteur de visualiser immédiatement le questionnaire sous différents formats (web, poste enquêteur, pdf, spécifications).

À l'issue des travaux de saisie effectués avec Pogues, le modèle de questionnaire est généré avec Eno, avec les paramètres propres à la collecte, et déployé sur une infrastructure de collecte.