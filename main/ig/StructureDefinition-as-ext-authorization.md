# AS Authorization Extension - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Authorization Extension**

## Extension: AS Authorization Extension 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-authorization | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsAuthorizationExtension |

Extension créée dans le cadre de l’Annuaire Santé pour décrire les autorisations des activités (HealthcareService) sanitaires, sociales, médico-sociales et d’enseignement et des équipements matériels (Device) lourds autorisés.

**Context of Use**

This extension may be used on the following element(s):

* Element ID HealthcareService
* Element ID Device

**Usage info**

**Usages:**

* Use this Extension: [AS Device Profile](StructureDefinition-as-device.md), [AS HealthcareService HealthCare Activity Profile](StructureDefinition-as-healthcareservice-healthcare-activity.md) and [AS HealthcareService Social Equipment Profile](StructureDefinition-as-healthcareservice-social-equipment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-authorization)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-authorization.csv), [Excel](StructureDefinition-as-ext-authorization.xlsx), [Schematron](StructureDefinition-as-ext-authorization.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-authorization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-authorization",
  "version" : "1.1.0",
  "name" : "AsAuthorizationExtension",
  "title" : "AS Authorization Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les autorisations des activités (HealthcareService) sanitaires, sociales, médico-sociales et d'enseignement et des équipements matériels (Device) lourds autorisés.",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "HealthcareService"
    },
    {
      "type" : "element",
      "expression" : "Device"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "AS Authorization Extension",
        "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les autorisations des activités (HealthcareService) sanitaires, sociales, médico-sociales et d'enseignement et des équipements matériels (Device) lourds autorisés."
      },
      {
        "id" : "Extension.extension:dateAuthorization",
        "path" : "Extension.extension",
        "sliceName" : "dateAuthorization",
        "short" : "Date de délivrance de l’autorisation.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:dateAuthorization.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:dateAuthorization.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "dateAuthorization"
      },
      {
        "id" : "Extension.extension:dateAuthorization.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Extension.extension:periodAuthorization",
        "path" : "Extension.extension",
        "sliceName" : "periodAuthorization",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:periodAuthorization.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:periodAuthorization.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "periodAuthorization"
      },
      {
        "id" : "Extension.extension:periodAuthorization.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Extension.extension:periodAuthorization.value[x].start",
        "path" : "Extension.extension.value[x].start",
        "short" : "Date de première mise en œuvre."
      },
      {
        "id" : "Extension.extension:periodAuthorization.value[x].end",
        "path" : "Extension.extension.value[x].end",
        "short" : "Date de fin de mise en œuvre."
      },
      {
        "id" : "Extension.extension:dateUpdateAuthorization",
        "path" : "Extension.extension",
        "sliceName" : "dateUpdateAuthorization",
        "short" : "Date de dernière mise à jour de l’autorisation.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:dateUpdateAuthorization.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:dateUpdateAuthorization.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "dateUpdateAuthorization"
      },
      {
        "id" : "Extension.extension:dateUpdateAuthorization.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Extension.extension:deletedAuthorization",
        "path" : "Extension.extension",
        "sliceName" : "deletedAuthorization",
        "short" : "Indicateur de suppression de l'autorisation.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:deletedAuthorization.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:deletedAuthorization.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "deletedAuthorization"
      },
      {
        "id" : "Extension.extension:deletedAuthorization.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-authorization"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
