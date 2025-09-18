[![FHIR workflow](https://github.com/ansforge/IG-fhir-annuaire/actions/workflows/fhir-worklows.yml/badge.svg)](https://github.com/ansforge/IG-fhir-annuaire/actions/workflows/fhir-worklows.yml)

Lien vers la dernière release : https://interop.esante.gouv.fr/ig/fhir/annuaire

Lien vers la version intégration continue (soumise à des changements réguliers) : https://ansforge.github.io/IG-fhir-annuaire/main/ig/ (ou https://ansforge.github.io/IG-fhir-annuaire/[nom_de_la_branche]/ig/ pour prévisualiser l'IG d'une branche)



# Contexte

## Contexte métier du projet

L’[Annuaire Santé](https://esante.gouv.fr/produits-services/annuaire-sante) rassemble les répertoires sectoriels de référence des personnes physiques et personnes morales : le répertoire partagé des professionnels intervenant dans le système de santé (RPPS+), et le répertoire FINESS+. L'Annuaire Santé est un service à usage professionnel destiné aux acteurs des secteurs sanitaire, social et médico-social. Ce service de publication fournit également des données provenant des opérateurs MSSanté, du SI CPX et de l’Assurance Maladie. 

L'API FHIR Annuaire Santé est une API RESTful au format JSON et structurée selon le standard d'interoperabilité FHIR.

## Contexte technique du projet

L'objectif de ce projet est de définir les profils Annuaire Santé (données publiques / données restreintes) et de publier l'ensemble des données à travers l'API FHIR.

On s'intéresse ici au modèle d'exposition des Données Publiques de l'Annuaire.

### Ressources profilées

Les ressources FHIR utilisées sont les suivantes :

* Practitioner
* PractitionerRole
* Organization
* Device
* HealthcareService
* CapabilityStatement

### Profils utilisés

L'Annuaire Santé s'appuie sur FrCore : https://hl7.fr/ig/fhir/core


# Notes

Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://github.com/ansforge/IG-fhir-annuaire/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* HL7 : Health Level Seven
* AS : Annuaire Santé
