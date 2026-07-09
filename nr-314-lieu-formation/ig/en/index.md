# Accueil - Annuaire Santé v1.2.0-snapshot-2

## Accueil

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

### Introduction

 **Healthcare professional Directory Implementation Guide**
 This implementation guide contains the FHIR profiles of French Healthcare professionals directory and documents how the data are exposed in the national API. 

The objective of this guide is to present the FHIR modelling of data from the Annuaire Santé, in compliance with the FHIR interoperability standard. This implementation guide has two objectives:

* Present the data published by the Annuaire Santé national FHIR API
* Serve as a foundation for the FHIR modelling of health professionals in France (cf. generic profiles)

This implementation guide is a specification that focuses primarily on the data model, not on the technical solution of the Annuaire Santé FHIR API. For more information on how the API works, please consult [the dedicated FHIR API documentation](https://ansforge.github.io/annuaire-sante-fhir-documentation)

#### Project context

The [Annuaire Santé](https://esante.gouv.fr/produits-services/annuaire-sante) brings together the reference sectoral directories for natural persons and legal entities: the shared directory of professionals involved in the healthcare system (RPPS+), and the FINESS+ directory. The Annuaire Santé is a professional-use service intended for actors in the health, social, and medico-social sectors. This publication service also provides data from MSSanté operators, the SI CPX, and the Assurance Maladie.

The Annuaire Santé FHIR API is a RESTful API in JSON format, structured according to the FHIR interoperability standard.

##### Profiled resources


The list below shows the generic profiles. These have been re-profiled to specify the public data and restricted data APIs. These profiles can be found in the "list of profiles" tab.

| | | |
| :--- | :--- | :--- |
| Profile title | Description | Parent profile canonical URL |
| [AS Device Profile](StructureDefinition-as-device.md) | Profil générique créé à partir de Device dans le contexte de l'Annuaire Santé pour décrire les Equipements Matériels Lourds (EML) mis en place au sein d'un établissement. | [Device](http://hl7.org/fhir/StructureDefinition/Device|4.0.1) |
| [AS HealthcareService HealthCare Activity Profile](StructureDefinition-as-healthcareservice-healthcare-activity.md) | Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS. | [HealthcareService](http://hl7.org/fhir/StructureDefinition/HealthcareService|4.0.1) |
| [AS HealthcareService Social Equipment Profile](StructureDefinition-as-healthcareservice-social-equipment.md) | Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS (ex : Hébergement de personnes handicapées, hébergement de personnes âgées, services médico-sociaux à domicile, ...). | [HealthcareService](http://hl7.org/fhir/StructureDefinition/HealthcareService|4.0.1) |
| [AS Organization Profile](StructureDefinition-as-organization.md) | Profil générique créé à partir de FrOrganization dans le contexte de l'Annuaire Santé pour décrire les établissements sanitaires, sociaux et médico-sociaux immatriculés dans le FIchier National des Etablissements Sanitaires et Sociaux (FINESS) ou dans le Répertoire Partagé des Professionnels de Santé (RPPS). | [FR Core Organization Etablissement Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization-etablissement|2.2.0) |
| [AS Person Profile](StructureDefinition-as-person.md) | Profil générique créé à partir de Person dans le contexte de l'Annuaire Santé pour décrire les informations relatives à la Personne Physique (données restreintes). | [Person](http://hl7.org/fhir/StructureDefinition/Person|4.0.1) |
| [AS Practitioner Profile](StructureDefinition-as-practitioner.md) | Profil générique créé à partir de FrPractitioner dans le contexte de l'Annuaire Santé pour décrire les données liées à l'exercice professionnel d'un professionnel (professions à ordre, professions sans ordre, professionnels à rôle). | [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.2.0) |
| [AS PractitionerRole Profile](StructureDefinition-as-practitionerrole.md) | Profil générique créé à partir de FRCorePractitionerRole dans le contexte de l'Annuaire Santé pour décrire la situation d'exercice du professionnel. | [FR Core Practitioner Role](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.2.0) |

##### Standards used

These technical specifications are based on the HL7 FHIR Release 4 (R4) standard. They reference a number of standard resources as well as the FHIR REST API specifications, based on the HTTP protocol. The syntax used is JSON format.

The diagram below maps the following two concepts: the "Modèle des Objets de Santé" [(MOS)](https://esante.gouv.fr/produits-services/mos-nos) managed by ANS, and the HL7 FHIR resource concept.

#### Useful links

* [Annuaire Santé FHIR API documentation (open access)](https://ansforge.github.io/annuaire-sante-fhir-documentation/)
* [Demo portal](https://portail.openfhir.annuaire.sante.fr/)

### Note

The examples associated with the profiles in this guide are provided for informational purposes and may evolve over time. They are not to be taken as a normative reference.

Attributes marked with the MustSupport tag are used by the Annuaire Santé API. These tags are only used in the context of applicative profiles.

### Dependencies









