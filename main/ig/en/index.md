# Accueil - Annuaire Santé v1.2.0-snapshot-1

## Accueil

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Introduction

 **Healthcare professional Directory Implementation Guide**
 This implementation guide contains the FHIR profiles of French Healthcare professionals directory and documents how the data are exposed in the national API. 

L'objectif de ce guide est de présenter la modélisation FHIR des données provenant de l'Annuaire Santé en respectant le standard d'intéroperabilité FHIR. Ce guide d'implémentation a deux objectifs :

* Présenter les données publiées par l'API FHIR nationale Annuaire Santé
* Servir de socle dans la modélisation FHIR des professionnels en France (cf. profils génériques)

Ce guide d'implémentation est une spécification qui se concentre principalement sur le modèle de données et non sur la solution technique de l'API FHIR Annuaire Santé. Pour en savoir davantage sur le fonctionnement de l'API, veuillez consulter [la documentation dédiée de l'API FHIR](https://ansforge.github.io/annuaire-sante-fhir-documentation)

#### Contexte du projet

L’[Annuaire Santé](https://esante.gouv.fr/produits-services/annuaire-sante) rassemble les répertoires sectoriels de référence des personnes physiques et personnes morales : le répertoire partagé des professionnels intervenant dans le système de santé (RPPS+), et le répertoire FINESS+. L'Annuaire Santé est un service à usage professionnel destiné aux acteurs des secteurs sanitaire, social et médico-social. Ce service de publication fournit également des données provenant des opérateurs MSSanté, du SI CPX et de l’Assurance Maladie.

L'API FHIR Annuaire Santé est une API RESTful au format JSON et structurée selon le standard d'interoperabilité FHIR.

##### Ressources profilées


La liste ci-dessous expose la liste des profils génériques profilés. Ceux-ci ont été re-profilés pour spécifier les APIs données publiques et données restreintes. Ces profils peuvent être trouvés dans l’onglet "liste des profils".

| | | |
| :--- | :--- | :--- |
| Titre du profil | Description | URL canonique du profil parent |
| [AS Device Profile](StructureDefinition-as-device.md) | Profil générique créé à partir de Device dans le contexte de l'Annuaire Santé pour décrire les Equipements Matériels Lourds (EML) mis en place au sein d'un établissement. | [Device](http://hl7.org/fhir/StructureDefinition/Device|4.0.1) |
| [AS HealthcareService HealthCare Activity Profile](StructureDefinition-as-healthcareservice-healthcare-activity.md) | Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS. | [HealthcareService](http://hl7.org/fhir/StructureDefinition/HealthcareService|4.0.1) |
| [AS HealthcareService Social Equipment Profile](StructureDefinition-as-healthcareservice-social-equipment.md) | Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS (ex : Hébergement de personnes handicapées, hébergement de personnes âgées, services médico-sociaux à domicile, ...). | [HealthcareService](http://hl7.org/fhir/StructureDefinition/HealthcareService|4.0.1) |
| [AS Organization Profile](StructureDefinition-as-organization.md) | Profil générique créé à partir de FrOrganization dans le contexte de l'Annuaire Santé pour décrire les établissements sanitaires, sociaux et médico-sociaux immatriculés dans le FIchier National des Etablissements Sanitaires et Sociaux (FINESS) ou dans le Répertoire Partagé des Professionnels de Santé (RPPS). | [FR Core Organization Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization|2.1.0) |
| [AS Person Profile](StructureDefinition-as-person.md) | Profil générique créé à partir de Person dans le contexte de l'Annuaire Santé pour décrire les informations relatives à la Personne Physique (données restreintes). | [Person](http://hl7.org/fhir/StructureDefinition/Person|4.0.1) |
| [AS Practitioner Profile](StructureDefinition-as-practitioner.md) | Profil générique créé à partir de FrPractitioner dans le contexte de l'Annuaire Santé pour décrire les données liées à l'exercice professionnel d'un professionnel (professions à ordre, professions sans ordre, professionnels à rôle). | [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner|2.1.0) |
| [AS PractitionerRole Profile](StructureDefinition-as-practitionerrole.md) | Profil générique créé à partir de FRCorePractitionerRole dans le contexte de l'Annuaire Santé pour décrire la situation d'exercice du professionnel. | [FR Core Practitioner Role](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role|2.1.0) |

##### Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR Release 4 (R4). Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API REST FHIR, basées sur le protocole HTTP. La syntaxe retenue est le format JSON.

Le schéma ci-dessous met en équivalence les deux concepts suivants : "Modèle des Objets de Santé"[(MOS)](https://esante.gouv.fr/produits-services/mos-nos) géré par l'ANS et le concept des ressources FHIR de HL7

#### Liens utiles

* [Documentation API FHIR Annuaire Santé en libre accès](https://ansforge.github.io/annuaire-sante-fhir-documentation/)
* [Portail de démonstration](https://portail.openfhir.annuaire.sante.fr/)

### Note

Les exemples associés aux profils au sein de ce guide sont donnés à titre indicatif et pourraient évoluer dans le temps. Ils n'ont pas valeur de référence.

Les attributs marqués du tag MustSupport sont utilisés par l'API Annuaire Santé. Ces tags sont uniquement utilisés dans le cadre des profils applicatifs.

### Dépendances









