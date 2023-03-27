# Contexte
En cours de constrcution.

## Contexte métier du projet
L’Annuaire Santé est un annuaire national de référence des professionnels de santé, avec les données opposables du RPPS, d’ADELI et de FINESS, complétées par les données des CPx, des BAL MSSanté et d'Ameli.fr, pour un usage orienté professionnel. C’est le maillon central de l’identification des acteurs de santé en France.

En publiant ces données, le service Annuaire Santé permet à ces clients de vérifier l’identité des professionnels de santé, leurs qualifications (diplômes et spécialités) et leurs activités.

Les nouveaux services de publication de l'Annuaire Santé permettent d’exposer ce référentiel, via une API RESTfull, au format JSON, structurés selon la norme d’interopérabilité FHIR.

## Contexte technique du projet
L'objectif de ce projet est de définir les profils Annuaire Santé pour pouvoir consommer ce référentiel via l'API FHIR.

# CI/CD
Les workflows associés à ce repository (.github/workflows) permettent : 
* D'exécuter Sushi pour vérifier la grammaire
* De faire les tests avec le validator_cli
* De publier les pages : https://ansforge.github.io/IG_ans-ig-annuaire-donnee-publique/ig/main/

# Notes
Ce repo "sample IG ANS" a été créé à partir du repo "sample-ig" de l'organisation GitHub FHIR : https://github.com/FHIR/sample-ig.

Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes
* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* FIG : FHIR Implementation Guide
* HL7 : Health Level Seven
