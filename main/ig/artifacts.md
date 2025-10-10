# Artifacts Summary - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [AsServerDPCapabilityStatement](CapabilityStatement-AsServerDPCapabilityStatement.md) | CapabilityStatement décrivant les attendus de l’API de l’annuaire santé. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [as-sp-address-line](SearchParameter-as-sp-address-line.md) | Recherche sur la version textuelle de l’adresse |
| [as-sp-data-information-system](SearchParameter-as-sp-data-information-system.md) | Paramètre de recherche pour récupérer une ressource par système d’information de provenance des données. |
| [as-sp-data-registration-authority](SearchParameter-as-sp-data-registration-authority.md) | Paramètre de recherche pour récupérer une ressource par autorité d’enregistrement des données. |
| [as-sp-insee-code](SearchParameter-as-sp-insee-code.md) | Paramètre de recherche pour récupérer une organisation, par code Insee. Cf http://www.sirius-upvm.net/doc/usuels/codes_postaux.html |
| [as-sp-mailbox-mss](SearchParameter-as-sp-mailbox-mss.md) | Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d’exercice par adresse MSSanté. |
| [as-sp-number-smartcard](SearchParameter-as-sp-number-smartcard.md) | Paramètre de recherche pour récupérer les situations d’exercice d’un professionnel par son numéro de carte CPx. |
| [as-sp-pharmacy-licence](SearchParameter-as-sp-pharmacy-licence.md) | Paramètre de recherche pour récupérer une pharmacie par son numéro de licence. |
| [as-sp-qualification-code](SearchParameter-as-sp-qualification-code.md) | Paramètre de recherche pour rechercher par code de qualification. |
| [as-sp-type-smartcard](SearchParameter-as-sp-type-smartcard.md) | Paramètre de recherche pour récupérer les situations d’exercice d’un professionnel par type de carte CPx. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AS Device Profile](StructureDefinition-as-device.md) | Profil générique créé à partir de Device dans le contexte de l’Annuaire Santé pour décrire les Equipements Matériels Lourds (EML) mis en place au sein d’un établissement. |
| [AS Donnée Publique Device Profile](StructureDefinition-as-dp-device.md) | Profil public applicatif créé à partir du profil générique as-device dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AS Donnée Publique HealthcareService Healthcare Activity Profile](StructureDefinition-as-dp-healthcareservice-healthcare-activity.md) | Profil public applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès libre de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AS Donnée Publique HealthcareService Social Equipment Profile](StructureDefinition-as-dp-healthcareservice-social-equipment.md) | Profil public applicatif créé à partir du profil générique as-healthcareservice-social-equipment dans le contexte des données en accès libre de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AS Donnée Publique Organization Profile](StructureDefinition-as-dp-organization.md) | Profil public applicatif créé à partir du profil générique as-organization dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AS Donnée Publique Practitioner Profile](StructureDefinition-as-dp-practitioner.md) | Profil public applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AS Donnée Publique PractitionerRole Profile](StructureDefinition-as-dp-practitionerrole.md) | Profil public applicatif créé à partir du profil générique as-practitionerrole dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AS Donnée Restreinte Device Profile](StructureDefinition-as-dr-device.md) | Profil restreint applicatif créé à partir du profil générique as-device dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AS Donnée Restreinte HealthcareService Healthcare Activity Profile](StructureDefinition-as-dr-healthcareservice-healthcare-activity.md) | Profil restreint applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AS Donnée Restreinte HealthcareService Social Equipment Profile](StructureDefinition-as-dr-healthcareservice-social-equipment.md) | Profil restreint applicatif créé à partir du profil générique as-healthcareservice-social-equipment dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AS Donnée Restreinte Organization Profile](StructureDefinition-as-dr-organization.md) | Profil restreint créé à partir de as-organization dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AS Donnée Restreinte Person Profile](StructureDefinition-as-dr-person.md) | Profil restreint créé à partir de as-person dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AS Donnée Restreinte Practitioner Profile](StructureDefinition-as-dr-practitioner.md) | Profil restreint créé à partir de as-practitioner dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AS Donnée Restreinte PractitionerRole Profile](StructureDefinition-as-dr-practitionerrole.md) | Profil restreint créé à partir de as-practitionerrole dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AS HealthcareService HealthCare Activity Profile](StructureDefinition-as-healthcareservice-healthcare-activity.md) | Profil générique créé à partir de HealthcareService dans le contexte de l’Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS. |
| [AS HealthcareService Social Equipment Profile](StructureDefinition-as-healthcareservice-social-equipment.md) | Profil générique créé à partir de HealthcareService dans le contexte de l’Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS (ex : Hébergement de personnes handicapées, hébergement de personnes âgées, services médico-sociaux à domicile, …). |
| [AS Organization Profile](StructureDefinition-as-organization.md) | Profil générique créé à partir de FrOrganization dans le contexte de l’Annuaire Santé pour décrire les établissements sanitaires, sociaux et médico-sociaux immatriculés dans le FIchier National des Etablissements Sanitaires et Sociaux (FINESS) ou dans le Répertoire Partagé des Professionnels de Santé (RPPS). |
| [AS Person Profile](StructureDefinition-as-person.md) | Profil générique créé à partir de Person dans le contexte de l’Annuaire Santé pour décrire les informations relatives à la Personne Physique (données restreintes). |
| [AS Practitioner Profile](StructureDefinition-as-practitioner.md) | Profil générique créé à partir de FrPractitioner dans le contexte de l’Annuaire Santé pour décrire les données liées à l’exercice professionnel d’un professionnel (professions à ordre, professions sans ordre, professionnels à rôle). |
| [AS PractitionerRole Profile](StructureDefinition-as-practitionerrole.md) | Profil générique créé à partir de FrPractitionerRoleExercice dans le contexte de l’Annuaire Santé pour décrire la situation d’exercice du professionnel. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AS Address Extended Datatype Profile](StructureDefinition-as-address-extended.md) | Datatype profile créé à partir de FrAddress dans le contexte de l’Annuaire Santé pour slicer Address.line. |
| [AS CodeableConceptTimed Datatype Profile](StructureDefinition-as-codeableconcept-timed.md) | Datatype profile créé à partir CodeableConcept dans le cadre de l’Annuaire Santé pour ajouter une extension Period au type CodeableConcept. |
| [AS Mailbox MSS Datatype Profile](StructureDefinition-as-mailbox-mss.md) | Datatype profile créé à partir ContactPoint dans le cadre de l’Annuaire Santé pour décrire les boîtes aux lettres du service de messagerie sécurisée de santé (MSSanté) rattachées aux professionnels et aux structures. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AS Authorization Extension](StructureDefinition-as-ext-authorization.md) | Extension créée dans le cadre de l’Annuaire Santé pour décrire les autorisations des activités (HealthcareService) sanitaires, sociales, médico-sociales et d’enseignement et des équipements matériels (Device) lourds autorisés. |
| [AS CodeableConceptTimed Metadata](StructureDefinition-as-ext-codeableconcept-timed-metadata.md) | Extension contenant les métadonnées du CodeableConceptTimed. |
| [AS Data Trace Extension](StructureDefinition-as-ext-data-trace.md) | Extension créée dans le cadre de l’Annuaire Santé pour tracer l’origine de la donnée (Autorité d’Enregistrement (AE) et Système d’Information (SI)). Des études complémentaires vont être initiées pour envisager l’usage de la ressource Provenance ou meta.source. |
| [AS Digital Certificate Extension](StructureDefinition-as-ext-digital-certificate.md) | Extension créée dans le cadre de l’Annuaire Santé pour décrire les certificats utilisés par les professionnels et les structures comme moyen d’identification. |
| [AS Education Level Extension](StructureDefinition-as-ext-education-level.md) | Extension créée dans le cadre de l’Annuaire Santé pour décrire le niveau de formation acquis d’un étudiant. |
| [AS Installation Extension](StructureDefinition-as-ext-installation.md) | Extension créée dans le cadre de l’Annuaire Santé pour décrire les dates d’installation des équipements (HealthcareService) sanitaires, sociaux, médico-sociaux et d’enseignements |
| [AS Lieu Dit Extension](StructureDefinition-as-ext-lieu-dit.md) | Extension créée dans le cadre de l’Annuaire Santé pour indiquer le lieu dit |
| [AS Mailbox Metadata](StructureDefinition-as-ext-mailbox-mss-metadata.md) | Extension contenant les métadonnées de la mailbox mss. |
| [AS Organization Authorization Deadline Extension](StructureDefinition-as-ext-organization-authorization-deadline.md) | Extension créée dans le cadre de l’Annuaire Santé pour prise en compte de la caducité de l’autorisation sanitaire. |
| [AS Organization Budget Type Extension](StructureDefinition-as-ext-organization-budget-type.md) | Extension créée dans le cadre de l’Annuaire Santé pour prise en compte de la nature du budget alloué à la structure. |
| [AS Organization Closing Type Extension](StructureDefinition-as-ext-organization-closing-type.md) | Extension créée dans le cadre de l’Annuaire Santé pour prise en compte du type de fermeture de la structure. |
| [AS Organization Pharmacy Licence Extension](StructureDefinition-as-ext-organization-pharmacy-licence.md) | Extension créée dans le cadre de l’Annuaire Santé pour prise en compte de la licence d’exploitation d’une officine. |
| [AS Organization Pricing Model Extension](StructureDefinition-as-ext-organization-pricing-model.md) | Extension créée dans le cadre de l’Annuaire Santé pour prise en compte du mode de tarification de la structure. |
| [AS Organization Types](StructureDefinition-as-ext-organization-types.md) | Extension pour discriminer les organization types. |
| [AS Patient Type Extension](StructureDefinition-as-ext-patient-type.md) | Extension créée dans le cadre de l’Annuaire Santé pour décrire un ensemble de personnes qui répondent à des critères leur permettant de bénéficier de la discipline décrite. |
| [AS Person Birth Place Extension](StructureDefinition-as-ext-person-birth-place.md) | Extension créée dans le cadre de l’Annuaire Santé pour prise en compte du lieu de naissance du professionnel en tant que personne physique. |
| [AS Person Deceased Date Time Extension](StructureDefinition-as-ext-person-deceased-date-time.md) | Extension créée dans le cadre de l’Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the Person if applicable). |
| [AS Practitioner Authorization Extension](StructureDefinition-as-ext-practitioner-authorization.md) | Extension créée dans le cadre de l’Annuaire Santé pour prise en compte de l’autorisation d’exercice du professionnel (AutorisationExercice). |
| [AS PractitionerRole Contracted](StructureDefinition-as-ext-practitionerrole-contracted.md) | Extension créée dans le cadre de l’Annuaire Santé pour décrire le secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l’Assurance Maladie. |
| [AS PractitionerRole Has CAS](StructureDefinition-as-ext-practitionerrole-hascas.md) | Extension créée dans le cadre de l’Annuaire Santé pour décrire le contrat d’accès aux soins (CAS), remplacée récemment par l’option pratique tarifaire maîtrisée (OPTAM). |
| [AS PractitionerRole Vitale Accepted](StructureDefinition-as-ext-practitionerrole-vitale-accepted.md) | Extension créée dans le cadre de l’Annuaire Santé pour décrire l’indicateur Carte Vitale acceptée (oui/non). |
| [AS Registration Extension](StructureDefinition-as-ext-registration.md) | Extension créée dans le cadre de l’Annuaire Santé pour prise en compte de la première inscription si “isFirst = true”. Ces données sont uniquement accessibles en accès restreint. |
| [AS Smart Card Extension](StructureDefinition-as-ext-smartcard.md) | Extension créée dans le cadre de l’Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques. |
| [AS Supported Capacity Extension](StructureDefinition-as-ext-supported-capacity.md) | Extension créée dans le cadre de l’Annuaire Santé pour indiquer le nombre de personnes pouvant être accueillies en même temps et les capacités d’hébergement. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AS ValueSet OrganizationTypes](ValueSet-as-vs-organization-types.md) | ValueSet définissant les types d’organisation |
| [AS ValueSet type Etablissement](ValueSet-as-vs-type-etablissement.md) | ValueSet définissant les types d’établissement. |
| [AS ValueSet type de système d'information](ValueSet-as-vs-type-systeme-information.md) | ValueSet définissant les types de systèmes d’information pouvant alimenter l’annuaire santé. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AS CodeSystem OrganizationTypes](CodeSystem-as-cs-organization-types.md) | CodeSystem définissant les types d’organisation |
| [AS CodeSystem Type Etablissement](CodeSystem-as-cs-type-etablissement.md) | CodeSystem définissant les types d’établissement. |
| [AS CodeSystem type de système d'information](CodeSystem-as-cs-type-systeme-information.md) | CodeSystem définissant les types de systèmes d’information pouvant alimenter l’annuaire santé. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [example-organization-fictive](Organization-example-organization-fictive.md) |
| [example-organization-nancy](Organization-example-organization-nancy.md) |
| [pp16dp-organization](Organization-481677DP.md) |
| [pp16dp-practitioner](Practitioner-3719500DP.md) |
| [pp16dp-practitioner-role](PractitionerRole-5015602DP.md) |
| [pp16dr-organization](Organization-481677.md) |
| [pp16dr-person](Person-pp16dr-person.md) |
| [pp16dr-practitioner](Practitioner-3719500.md) |
| [pp16dr-practitioner-role](PractitionerRole-5015602.md) |
| [pp19dp-organization-eg-cab](Organization-158480DP.md) |
| [pp19dp-organization-ej-cab](Organization-548812DP.md) |
| [pp19dp-practitioner](Practitioner-334081DP.md) |
| [pp19dp-practitioner-role-lib](PractitionerRole-1738459DP.md) |
| [pp19dp-practitioner-role-sal](PractitionerRole-1578230DP.md) |
| [pp19dr-organization-eg-cab](Organization-158480.md) |
| [pp19dr-organization-ej-cab](Organization-548812.md) |
| [pp19dr-person](Person-pp19dr-person.md) |
| [pp19dr-practitioner](Practitioner-334081.md) |
| [pp19dr-practitioner-role-lib](PractitionerRole-1738459.md) |
| [pp19dr-practitioner-role-sal](PractitionerRole-1578230.md) |

