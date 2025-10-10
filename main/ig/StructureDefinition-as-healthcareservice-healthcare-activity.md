# AS HealthcareService HealthCare Activity Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS HealthcareService HealthCare Activity Profile**

## Resource Profile: AS HealthcareService HealthCare Activity Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-healthcareservice-healthcare-activity | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsHealthcareServiceHealthcareActivityProfile |

 
Profil générique créé à partir de HealthcareService dans le contexte de l’Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS. 

**Usages:**

* Derived from this Profile: [AS Donnée Publique HealthcareService Healthcare Activity Profile](StructureDefinition-as-dp-healthcareservice-healthcare-activity.md) and [AS Donnée Restreinte HealthcareService Healthcare Activity Profile](StructureDefinition-as-dr-healthcareservice-healthcare-activity.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-healthcareservice-healthcare-activity)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-healthcareservice-healthcare-activity.csv), [Excel](StructureDefinition-as-healthcareservice-healthcare-activity.xlsx), [Schematron](StructureDefinition-as-healthcareservice-healthcare-activity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-healthcareservice-healthcare-activity",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-healthcareservice-healthcare-activity",
  "version" : "1.1.0",
  "name" : "AsHealthcareServiceHealthcareActivityProfile",
  "title" : "AS HealthcareService HealthCare Activity Profile",
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
  "description" : "Profil générique créé à partir de HealthcareService dans le contexte de l'Annuaire Santé pour décrire les activités sanitaires rattachées à un établissement FINESS.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HealthcareService",
        "path" : "HealthcareService"
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
        "patternUri" : "https://arhgos.ars.sante.fr"
      },
      {
        "id" : "HealthcareService.providedBy",
        "path" : "HealthcareService.providedBy",
        "short" : "Référence vers l'id de la structure FINESS ET à laquelle est rattachée cette activité sanitaire (idNat_Struct).",
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
        "id" : "HealthcareService.category",
        "path" : "HealthcareService.category",
        "short" : "La modalité étant un mode d’application ou un type de soin prévu par les textes réglementaires encadrant chaque activité de soins (modalite).",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J132-ModaliteActivite-RASS/FHIR/JDV-J132-ModaliteActivite-RASS"
        }
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
        }
      },
      {
        "id" : "HealthcareService.type:category",
        "path" : "HealthcareService.type",
        "sliceName" : "category",
        "short" : "Catégorie d'activité de soin autorisée. \r\nExemple : Activités de soins Soumises à Reconnaissance contractuelle",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J131-CategorieActiviteSanitaireRegulee-RASS/FHIR/JDV-J131-CategorieActiviteSanitaireRegulee-RASS"
        }
      },
      {
        "id" : "HealthcareService.type:activity",
        "path" : "HealthcareService.type",
        "sliceName" : "activity",
        "short" : "La discipline déterminant la nature de l’activité (CODE_ACT_SOIN).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J133-ActiviteSanitaireRegulee-RASS/FHIR/JDV-J133-ActiviteSanitaireRegulee-RASS"
        }
      },
      {
        "id" : "HealthcareService.specialty",
        "path" : "HealthcareService.specialty",
        "short" : "Code définissant l'activité de soins autorisée -AS- (article L.6122-1 du CSP), \r\nla liste des activités de soins soumises à autorisation est fixée par décret en Conseil d'Etat (article L.6122-25 du CSP).\nactivite",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J133-ActiviteSanitaireRegulee-RASS/FHIR/JDV-J133-ActiviteSanitaireRegulee-RASS"
        }
      },
      {
        "id" : "HealthcareService.characteristic",
        "path" : "HealthcareService.characteristic",
        "short" : "La forme d'activité étant un type d’organisation de prise en charge (forme).",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J134-FormeActivite-RASS/FHIR/JDV-J134-FormeActivite-RASS"
        }
      }
    ]
  }
}

```
