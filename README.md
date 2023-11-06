[![FHIR workflow](https://github.com/ansforge/IG-fhir-annuaire/actions/workflows/fhir-worklows.yml/badge.svg)](https://github.com/ansforge/IG-fhir-annuaire/actions/workflows/fhir-worklows.yml)

# Contexte

## Contexte métier du projet

L’[Annuaire Santé](https://esante.gouv.fr/produits-services/annuaire-sante) est un annuaire national de référence des professionnels de santé, avec les données opposables du RPPS, d’ADELI et de FINESS, complétées par les données des CPx, des BAL MSSanté et d'Ameli.fr, pour un usage orienté professionnel. C’est le maillon central de l’identification des acteurs de santé en France.

En publiant ces données, le service Annuaire Santé permet à ces clients de vérifier l’identité des professionnels de santé, leurs qualifications (diplômes et spécialités) et leurs activités.

Les nouveaux services de publication de l'Annuaire Santé permettent d’exposer ce référentiel, via une API RESTfull, au format JSON, structurés selon la norme d’interopérabilité FHIR.

## Contexte technique du projet

L'objectif de ce projet est de définir les profils Annuaire Santé pour pouvoir consommer ce référentiel via l'API FHIR.

On s'intéresse ici au modèle d'exposition des données publiques de l'Annuaire.

### Ressources profilées

Les ressources FHIR utilisées sont les suivantes :

* Practitioner
* PractitionerRole
* Organization
* Device
* HealthcareService
* CapabilityStatement

### Profils utilisés

La dépendance à hl7.fhir.fr.core (1.1.0) est utilsée dans le cadre de ce volet, avec les profils : « [FrPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner) », « [FrPractitionerRoleExercice](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitionerRoleExercice) », « [FrOrganization](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization) », « [FrHumanName](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrHumanName) », « [FrContactPoint](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrContactPoint) » et « [FrAddress](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrAddress) »

# CI/CD

Les workflows associés à ce repository (.github/workflows) permettent :

* D'exécuter Sushi pour vérifier la grammaire
* De faire les tests avec le validator_cli
* De publier les pages : https://ansforge.github.io/IG-fhir-annuaire/ig/main/ (ou https://ansforge.github.io/IG-fhir-annuaire/ig/[nom_de_la_branche] pour prévisualiser l'IG d'une branche)

![image](https://user-images.githubusercontent.com/101335975/215342980-61686171-e3f8-40c5-865c-efdfc3dd52b4.png)

# Notes

Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* HL7 : Health Level Seven
* AS : Annuaire Santé