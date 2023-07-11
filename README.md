# Contexte

## Contexte métier du projet
L’[Annuaire Santé](https://esante.gouv.fr/produits-services/annuaire-sante) est un annuaire national de référence des professionnels de santé, avec les données opposables du RPPS, d’ADELI et de FINESS, complétées par les données des CPx, des BAL MSSanté et d'Ameli.fr, pour un usage orienté professionnel. C’est le maillon central de l’identification des acteurs de santé en France.

En publiant ces données, le service Annuaire Santé permet à ces clients de vérifier l’identité des professionnels de santé, leurs qualifications (diplômes et spécialités) et leurs activités.

Les nouveaux services de publication de l'Annuaire Santé permettent d’exposer ce référentiel, via une API RESTfull, au format JSON, structurés selon la norme d’interopérabilité FHIR.

## Contexte technique du projet
L'objectif de ce projet est de définir les profils Annuaire Santé pour pouvoir consommer ce référentiel via l'API FHIR.

On s'intéresse ici au modèle d'exposition des données publiques de l'Annuaire.

## Ressources profilées 
* Organization : Ressource comportant toutes les données publiques des « [structures](https://mos.esante.gouv.fr/4.html#_f6152a96-2f8f-4f69-89f5-18f024d4b4d8) »
* Device : Ressource comportant toutes le données publiques concernant les données complémentaires FINESS « [équipements matériels lourds](https://mos.esante.gouv.fr/5.html#_1a21e9b8-d686-41ff-806d-38572f961ec6) »
* HealthcareService : Ressource divisée en deux profils pour décrire les « [activités de soin](https://mos.esante.gouv.fr/5.html#_2f0d6658-e0f7-4486-a646-424b09f01f76) » et les « [équipements sociaux ](https://mos.esante.gouv.fr/5.html#_def51d8f-2eb8-47f8-9c30-b03709096666) »
  * HealthcareService-SocialEquipment pour les équipements sociaux
  * HealthcareService-HealthCareActivity pour les activités de soin
* Practitioner : Ressource comportant toutes les données publiques concernant les données d’identification pérennes des « [professionnels de santé](https://mos.esante.gouv.fr/2.html#_9d79ff39-6b00-4aa6-ac03-7afb4a8aad2b) »
* PractitionerRole : Ressource comportant toutes les données publiques concernant les données des « [exercices professionnels](https://mos.esante.gouv.fr/2.html#_5579aac4-b414-41f1-8569-2e99403e3af3) » et des « [situations d’exercice](https://mos.esante.gouv.fr/2.html#_86e1685b-9e1d-47fb-bb66-d23ca0eb9679) » des professionnels

## Profils utilisés
* hl7.fhir.fr.core (1.1.0) : « [FrPractitioner](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrPractitioner) », « [FrOrganization](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrOrganization) », « [FrHumanName](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrHumanName) », « [FrContactPoint](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrContactPoint) » et « [FrAddress](https://simplifier.net/resolve?scope=hl7.fhir.fr.core@1.1.0&canonical=http://interopsante.org/fhir/StructureDefinition/FrAddress) » 

# CI/CD
Les workflows associés à ce repository (.github/workflows) permettent : 
* D'exécuter Sushi pour vérifier la grammaire
* De faire les tests avec le validator_cli
* De publier les pages : https://ansforge.github.io/IG-fhir-annuaire/ig/main/


## Acronymes
* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* FIG : FHIR Implementation Guide
* HL7 : Health Level Seven

Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.
