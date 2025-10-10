# AS Donnée Publique HealthcareService Healthcare Activity Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Donnée Publique HealthcareService Healthcare Activity Profile**

## Resource Profile: AS Donnée Publique HealthcareService Healthcare Activity Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-healthcareservice-healthcare-activity | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsDpHealthcareServiceHealthcareActivityProfile |

 
Profil public applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès libre de l’Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement. 

**Usages:**

* CapabilityStatements using this Profile: [CapabilityStatement[https://interop.esante.gouv.fr/ig/fhir/annuaire/CapabilityStatement/AsServerDPCapabilityStatement|1.1.0]](CapabilityStatement-AsServerDPCapabilityStatement.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-dp-healthcareservice-healthcare-activity)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-dp-healthcareservice-healthcare-activity.csv), [Excel](StructureDefinition-as-dp-healthcareservice-healthcare-activity.xlsx), [Schematron](StructureDefinition-as-dp-healthcareservice-healthcare-activity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-dp-healthcareservice-healthcare-activity",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-healthcareservice-healthcare-activity",
  "version" : "1.1.0",
  "name" : "AsDpHealthcareServiceHealthcareActivityProfile",
  "title" : "AS Donnée Publique HealthcareService Healthcare Activity Profile",
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
  "description" : "Profil public applicatif créé à partir du profil générique as-healthcareservice-healthcare-activity dans le contexte des données en accès libre de l'Annuaire Santé. Pour connaître les paramètres de recherches associés à ce profil, il suffit de consulter le CapabilityStatement AsServerCapabilityStatement.",
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
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-healthcareservice-healthcare-activity",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HealthcareService",
        "path" : "HealthcareService"
      },
      {
        "id" : "HealthcareService.meta.extension:as-ext-data-trace",
        "path" : "HealthcareService.meta.extension",
        "sliceName" : "as-ext-data-trace",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.meta.extension:as-ext-data-trace.extension:date-maj-ae",
        "path" : "HealthcareService.meta.extension.extension",
        "sliceName" : "date-maj-ae",
        "short" : "Date maj de l'activité selon l'autorité d'enregistrement",
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.meta.profile",
        "path" : "HealthcareService.meta.profile",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "description" : "Slice based on the canonical url value",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "HealthcareService.meta.profile:as-dp-canonical",
        "path" : "HealthcareService.meta.profile",
        "sliceName" : "as-dp-canonical",
        "min" : 1,
        "max" : "1",
        "patternCanonical" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-healthcareservice-healthcare-activity"
      },
      {
        "id" : "HealthcareService.extension:as-ext-authorization",
        "path" : "HealthcareService.extension",
        "sliceName" : "as-ext-authorization",
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.identifier",
        "path" : "HealthcareService.identifier",
        "min" : 1
      },
      {
        "id" : "HealthcareService.identifier:numAutorisationArhgos",
        "path" : "HealthcareService.identifier",
        "sliceName" : "numAutorisationArhgos",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.active",
        "path" : "HealthcareService.active",
        "min" : 1
      },
      {
        "id" : "HealthcareService.providedBy",
        "path" : "HealthcareService.providedBy",
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.category",
        "path" : "HealthcareService.category",
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.specialty",
        "path" : "HealthcareService.specialty",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.name",
        "path" : "HealthcareService.name",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.comment",
        "path" : "HealthcareService.comment",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.extraDetails",
        "path" : "HealthcareService.extraDetails",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.photo",
        "path" : "HealthcareService.photo",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.telecom",
        "path" : "HealthcareService.telecom",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.coverageArea",
        "path" : "HealthcareService.coverageArea",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.serviceProvisionCode",
        "path" : "HealthcareService.serviceProvisionCode",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.eligibility",
        "path" : "HealthcareService.eligibility",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.program",
        "path" : "HealthcareService.program",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.characteristic",
        "path" : "HealthcareService.characteristic",
        "mustSupport" : true
      },
      {
        "id" : "HealthcareService.communication",
        "path" : "HealthcareService.communication",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.referralMethod",
        "path" : "HealthcareService.referralMethod",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.appointmentRequired",
        "path" : "HealthcareService.appointmentRequired",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.availableTime",
        "path" : "HealthcareService.availableTime",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.notAvailable",
        "path" : "HealthcareService.notAvailable",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.availabilityExceptions",
        "path" : "HealthcareService.availabilityExceptions",
        "max" : "0"
      },
      {
        "id" : "HealthcareService.endpoint",
        "path" : "HealthcareService.endpoint",
        "max" : "0"
      }
    ]
  }
}

```
