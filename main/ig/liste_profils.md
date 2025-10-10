# Liste des profils par permission - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* **Liste des profils par permission**

## Liste des profils par permission

Les profils spécifient le format de données exposées par l’API Annuaire. Certains champs contiennent un tag Must Support (MS), symbolisés par un S encadré d’un carré rouge, indiquant que cette donnée est exposée par l’API si celle-ci existe.

### Liste des profils génériques

Ces profils génériques n’ont pas de contraintes fortes pour être héritées facilement par les autres guides tel que les volets du CI-SIS. Ces contraintes pourront être réutilisées progressivement au sein des profils d’InteropSanté. Ces profils héritent des ressources de base FHIR ou bien des profils InteropSanté

| | |
| :--- | :--- |
| Titre du profil | Description |
| [AsDeviceProfile](StructureDefinition-as-device.md) | Profil générique créé à partir de Device dans le contexte de l'Annuaire Santé pour décrire les Equipements Matériels Lourds (EML) mis en place au sein d'un établissement. |
| [AsHealthcareServiceHealthcareActivityProfile](StructureDefinition-as-healthcareservice-healthcare-activity.md) | Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS. |
| [AsHealthcareServiceSocialEquipmentProfile](StructureDefinition-as-healthcareservice-social-equipment.md) | Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS (ex : Hébergement de personnes handicapées, hébergement de personnes âgées, services médico-sociaux à domicile, ...). |
| [AsOrganizationProfile](StructureDefinition-as-organization.md) | Profil générique créé à partir de FrOrganization dans le contexte de l'Annuaire Santé pour décrire les établissements sanitaires, sociaux et médico-sociaux immatriculés dans le FIchier National des Etablissements Sanitaires et Sociaux (FINESS) ou dans le Répertoire Partagé des Professionnels de Santé (RPPS). |
| [AsPersonProfile](StructureDefinition-as-person.md) | Profil générique créé à partir de Person dans le contexte de l'Annuaire Santé pour décrire les informations relatives à la Personne Physique (données restreintes). |
| [AsPractitionerProfile](StructureDefinition-as-practitioner.md) | Profil générique créé à partir de FrPractitioner dans le contexte de l'Annuaire Santé pour décrire les données liées à l'exercice professionnel d'un professionnel (professions à ordre, professions sans ordre, professionnels à rôle). |
| [AsPractitionerRoleProfile](StructureDefinition-as-practitionerrole.md) | Profil générique créé à partir de FrPractitionerRoleExercice dans le contexte de l'Annuaire Santé pour décrire la situation d'exercice du professionnel. |

### Liste des profils applicatifs - données publiques

Liste des profils applicatifs héritant des profils génériques pour détailler les ressources exposées en accès libre par l’API données publiques.

| | |
| :--- | :--- |
| Titre du profil | Description |
| [AsDpDeviceProfile](StructureDefinition-as-dp-device.md) | Profil public applicatif créé à partir du profil générique as-device dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AsDpHealthcareServiceHealthcareActivityProfile](StructureDefinition-as-dp-healthcareservice-healthcare-activity.md) | Profil public applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès libre de l'Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AsDpHealthcareServiceSocialEquipmentProfile](StructureDefinition-as-dp-healthcareservice-social-equipment.md) | Profil public applicatif créé à partir du profil générique as-healthcareservice-social-equipment dans le contexte des données en accès libre de l'Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AsDpOrganizationProfile](StructureDefinition-as-dp-organization.md) | Profil public applicatif créé à partir du profil générique as-organization dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AsDpPractitionerProfile](StructureDefinition-as-dp-practitioner.md) | Profil public applicatif créé à partir du profil générique as-practitioner dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |
| [AsDpPractitionerRoleProfile](StructureDefinition-as-dp-practitionerrole.md) | Profil public applicatif créé à partir du profil générique as-practitionerrole dans le contexte des données en libre accès de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. |

### Liste des profils applicatifs - données restreintes

Liste des profils applicatifs héritant des profils génériques pour détailler les ressources exposées en accès restreint.

| | |
| :--- | :--- |
| Titre du profil | Description |
| [AsDrDeviceProfile](StructureDefinition-as-dr-device.md) | Profil restreint applicatif créé à partir du profil générique as-device dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AsDrHealthcareServiceHealthcareActivityProfile](StructureDefinition-as-dr-healthcareservice-healthcare-activity.md) | Profil restreint applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès restreint de l'Annuaire Santé. |
| [AsDrHealthcareServiceSocialEquipmentProfile](StructureDefinition-as-dr-healthcareservice-social-equipment.md) | Profil restreint applicatif créé à partir du profil générique as-healthcareservice-social-equipment dans le contexte des données en accès restreint de l'Annuaire Santé. |
| [AsDrOrganizationProfile](StructureDefinition-as-dr-organization.md) | Profil restreint créé à partir de as-organization dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AsDrPersonProfile](StructureDefinition-as-dr-person.md) | Profil restreint créé à partir de as-person dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AsDrPractitionerProfile](StructureDefinition-as-dr-practitioner.md) | Profil restreint créé à partir de as-practitioner dans le contexte des données en accès restreint de l’Annuaire Santé. |
| [AsDrPractitionerRoleProfile](StructureDefinition-as-dr-practitionerrole.md) | Profil restreint créé à partir de as-practitionerrole dans le contexte des données en accès restreint de l’Annuaire Santé. |

