# Liste des profils par permission - Annuaire Santé v1.2.0-snapshot-3

## Liste des profils par permission

 
This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.md). 

The profiles specify the data format exposed by the Annuaire API. Some fields carry a Must Support (MS) tag, symbolised by an S enclosed in a red square, indicating that this data is exposed by the API when it exists.

### List of generic profiles

These generic profiles have no strong constraints so that they can be easily inherited by other guides, such as CI-SIS volumes. These constraints may be progressively reused within the InteropSanté profiles. These profiles inherit from base FHIR resources or from InteropSanté profiles.

| | |
| :--- | :--- |
| Profile title | Description |
| [AsDeviceProfile](StructureDefinition-as-device.md) | Profil générique créé à partir de Device dans le contexte de l'Annuaire Santé pour décrire les Equipements Matériels Lourds (EML) mis en place au sein d'un établissement. |
| [AsHealthcareServiceHealthcareActivityProfile](StructureDefinition-as-healthcareservice-healthcare-activity.md) | Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS. |
| [AsHealthcareServiceSocialEquipmentProfile](StructureDefinition-as-healthcareservice-social-equipment.md) | Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS (ex : Hébergement de personnes handicapées, hébergement de personnes âgées, services médico-sociaux à domicile, ...). |
| [AsOrganizationProfile](StructureDefinition-as-organization.md) | Profil générique créé à partir de FrOrganization dans le contexte de l'Annuaire Santé pour décrire les établissements sanitaires, sociaux et médico-sociaux immatriculés dans le FIchier National des Etablissements Sanitaires et Sociaux (FINESS) ou dans le Répertoire Partagé des Professionnels de Santé (RPPS). |
| [AsPersonProfile](StructureDefinition-as-person.md) | Profil générique créé à partir de Person dans le contexte de l'Annuaire Santé pour décrire les informations relatives à la Personne Physique (données restreintes). |
| [AsPractitionerProfile](StructureDefinition-as-practitioner.md) | Profil générique créé à partir de FrPractitioner dans le contexte de l'Annuaire Santé pour décrire les données liées à l'exercice professionnel d'un professionnel (professions à ordre, professions sans ordre, professionnels à rôle). |
| [AsPractitionerRoleProfile](StructureDefinition-as-practitionerrole.md) | Profil générique créé à partir de FRCorePractitionerRole dans le contexte de l'Annuaire Santé pour décrire la situation d'exercice du professionnel. |

### List of applicative profiles — public data

List of applicative profiles inheriting from generic profiles, detailing the resources exposed through open access by the public data API.

| | |
| :--- | :--- |
| Profile title | Description |
| [AsDpDeviceProfile](StructureDefinition-as-dp-device.md) | Profil public applicatif créé à partir du profil générique as-device dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AsDpHealthcareServiceHealthcareActivityProfile](StructureDefinition-as-dp-healthcareservice-healthcare-activity.md) | Profil public applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès libre de l'Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AsDpHealthcareServiceSocialEquipmentProfile](StructureDefinition-as-dp-healthcareservice-social-equipment.md) | Profil public applicatif créé à partir du profil générique as-healthcareservice-social-equipment dans le contexte des données en accès libre de l'Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AsDpOrganizationProfile](StructureDefinition-as-dp-organization.md) | Profil public applicatif créé à partir du profil générique as-organization dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AsDpPractitionerProfile](StructureDefinition-as-dp-practitioner.md) | Profil public applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AsDpPractitionerRoleProfile](StructureDefinition-as-dp-practitionerrole.md) | Profil public applicatif créé à partir du profil générique as-practitionerrole dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |

### List of applicative profiles — restricted data

List of applicative profiles inheriting from generic profiles, detailing the resources exposed through restricted access.

| | |
| :--- | :--- |
| Profile title | Description |
| [AsDrDeviceProfile](StructureDefinition-as-dr-device.md) | Profil restreint applicatif créé à partir du profil générique as-device dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AsDrHealthcareServiceHealthcareActivityProfile](StructureDefinition-as-dr-healthcareservice-healthcare-activity.md) | Profil restreint applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès restreint de l'Annuaire Santé. |
| [AsDrHealthcareServiceSocialEquipmentProfile](StructureDefinition-as-dr-healthcareservice-social-equipment.md) | Profil restreint applicatif créé à partir du profil générique as-healthcareservice-social-equipment dans le contexte des données en accès restreint de l'Annuaire Santé. |
| [AsDrOrganizationProfile](StructureDefinition-as-dr-organization.md) | Profil restreint créé à partir de as-organization dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AsDrPersonProfile](StructureDefinition-as-dr-person.md) | Profil restreint créé à partir de as-person dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AsDrPractitionerProfile](StructureDefinition-as-dr-practitioner.md) | Profil restreint créé à partir de as-practitioner dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AsDrPractitionerRoleProfile](StructureDefinition-as-dr-practitionerrole.md) | Profil restreint créé à partir de as-practitionerrole dans le contexte des données en accès restreint de l’Annuaire Santé. |

