# AS HealthcareService Social Equipment Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS HealthcareService Social Equipment Profile**

## Resource Profile: AS HealthcareService Social Equipment Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-healthcareservice-social-equipment | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsHealthcareServiceSocialEquipmentProfile |

 
Profil générique créé à partir de HealthcareService dans le contexte de l’Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS (ex : Hébergement de personnes handicapées, hébergement de personnes âgées, services médico-sociaux à domicile, …). 

**Usages:**

* Derived from this Profile: [AS Donnée Publique HealthcareService Social Equipment Profile](StructureDefinition-as-dp-healthcareservice-social-equipment.md) and [AS Donnée Restreinte HealthcareService Social Equipment Profile](StructureDefinition-as-dr-healthcareservice-social-equipment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-healthcareservice-social-equipment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-healthcareservice-social-equipment.csv), [Excel](StructureDefinition-as-healthcareservice-social-equipment.xlsx), [Schematron](StructureDefinition-as-healthcareservice-social-equipment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-healthcareservice-social-equipment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-healthcareservice-social-equipment",
  "version" : "1.1.0",
  "name" : "AsHealthcareServiceSocialEquipmentProfile",
  "title" : "AS HealthcareService Social Equipment Profile",
  "status" : "active",
  "date" : "2025-10-10T07:08:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        },
        {
          "system" : "email",
          "value" : "monserviceclient.annuaire@esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les équipements sociaux représentant les activités des établissements du domaine social et médico-social enregistrés dans FINESS (ex : Hébergement de personnes handicapées, hébergement de personnes âgées, services médico-sociaux à domicile, ...).",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
      "uri" : "https://mos.esante.gouv.fr",
      "name" : "AsHealthcareServiceSocialEquipmentProfile to MOS - ActiviteSociale"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HealthcareService",
        "path" : "HealthcareService",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension",
        "path" : "HealthcareService.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "HealthcareService.extension:as-ext-authorization",
        "path" : "HealthcareService.extension",
        "sliceName" : "as-ext-authorization",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-authorization"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-authorization.extension:dateAuthorization",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "dateAuthorization",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.dateAutorisation"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-authorization.extension:deletedAuthorization",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "deletedAuthorization",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.suppressionAutorisation"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-installation",
        "path" : "HealthcareService.extension",
        "sliceName" : "as-ext-installation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-installation"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-installation.extension:dateFirstInstallation",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "dateFirstInstallation",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.datePremiereInstallation"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-installation.extension:deletedInstallation",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "deletedInstallation",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.suppressionInstallation"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-patient-type",
        "path" : "HealthcareService.extension",
        "sliceName" : "as-ext-patient-type",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-patient-type"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-patient-type.extension:authorizedAgeRange",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "authorizedAgeRange"
      },
      {
        "id" : "HealthcareService.extension:as-ext-patient-type.extension:authorizedAgeRange.value[x].low",
        "path" : "HealthcareService.extension.extension.value[x].low",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.ageMinAutorisee"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-patient-type.extension:authorizedAgeRange.value[x].high",
        "path" : "HealthcareService.extension.extension.value[x].high",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.ageMaxAutorisee"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-patient-type.extension:installedAgeRange",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "installedAgeRange"
      },
      {
        "id" : "HealthcareService.extension:as-ext-patient-type.extension:installedAgeRange.value[x].low",
        "path" : "HealthcareService.extension.extension.value[x].low",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.ageMaxInstallee"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-patient-type.extension:installedAgeRange.value[x].high",
        "path" : "HealthcareService.extension.extension.value[x].high",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.ageMaxInstallee"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-supported-capacity",
        "path" : "HealthcareService.extension",
        "sliceName" : "as-ext-supported-capacity",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-supported-capacity"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-supported-capacity.extension:capacityAvailable",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "capacityAvailable",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.capaciteAutorisee"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-supported-capacity.extension:femaleCapacityAvailable",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "femaleCapacityAvailable",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.capaciteAutoriseeFemme"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-supported-capacity.extension:maleCapacityAvailable",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "maleCapacityAvailable",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.capaciteAutoriseeHomme"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-supported-capacity.extension:socialAssistanceCapacityAvailable",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "socialAssistanceCapacityAvailable",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.capaciteAutoriseeHabiliteAideSociale"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-supported-capacity.extension:installedCapacity",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "installedCapacity",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.capaciteInstallee"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-supported-capacity.extension:femaleInstalledCapacity",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "femaleInstalledCapacity",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.capaciteInstalleeFemme"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-supported-capacity.extension:maleInstalledCapacity",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "maleInstalledCapacity",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.capaciteInstalleeHomme"
          }
        ]
      },
      {
        "id" : "HealthcareService.extension:as-ext-supported-capacity.extension:socialAssistanceInstalledCapacity",
        "path" : "HealthcareService.extension.extension",
        "sliceName" : "socialAssistanceInstalledCapacity",
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.capaciteInstalleeHabiliteAideSociale"
          }
        ]
      },
      {
        "id" : "HealthcareService.identifier",
        "path" : "HealthcareService.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "Slice based on the identifier.system value",
          "rules" : "open"
        }
      },
      {
        "id" : "HealthcareService.identifier:numAutorisationArhgos",
        "path" : "HealthcareService.identifier",
        "sliceName" : "numAutorisationArhgos",
        "short" : "Identifiant fonctionnel, numéro d'autorisation ARHGOS (numeroAutorisationARHGOS).",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "HealthcareService.identifier:numAutorisationArhgos.system",
        "path" : "HealthcareService.identifier.system",
        "min" : 1,
        "patternUri" : "https://arhgos.ars.sante.fr/"
      },
      {
        "id" : "HealthcareService.providedBy",
        "path" : "HealthcareService.providedBy",
        "short" : "Référence vers l'id de la structure FINESS ET à laquelle est rattaché cet équipement social (idNat_Struct, identifiantEJ, identifiantEG).",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.type",
        "path" : "HealthcareService.type",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.discipineEquipementSociale"
          }
        ]
      },
      {
        "id" : "HealthcareService.type:category",
        "path" : "HealthcareService.type",
        "sliceName" : "category",
        "short" : "La catégorie de la discipline déterminant la nature de l’activité (disciplineEquipementSociale).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J136-DisciplineEquipementSocial-RASS/FHIR/JDV-J136-DisciplineEquipementSocial-RASS"
        }
      },
      {
        "id" : "HealthcareService.eligibility",
        "path" : "HealthcareService.eligibility",
        "short" : "Population prise en charge par l’établissement dans le cadre de l’activité associée à la discipline (clientele, public, patientele)."
      },
      {
        "id" : "HealthcareService.eligibility.code",
        "path" : "HealthcareService.eligibility.code",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J137-Clientele-RASS/FHIR/JDV-J137-Clientele-RASS"
        },
        "mapping" : [
          {
            "identity" : "as-healthcare-social-equipment-to-mos-activite-sociale",
            "map" : "ActiviteSociale.clientele"
          }
        ]
      },
      {
        "id" : "HealthcareService.characteristic",
        "path" : "HealthcareService.characteristic",
        "short" : "Le mode de fonctionnement précisant la modalité d’accueil, d’hébergement et/ou d’ouverture de l'activité associée à la discipline (modeFonctionnement, typeActivite).",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J138-TypeActivite-RASS/FHIR/JDV-J138-TypeActivite-RASS"
        }
      }
    ]
  }
}

```
