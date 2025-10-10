# AS Patient Type Extension - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Patient Type Extension**

## Extension: AS Patient Type Extension 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-patient-type | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsPatientTypeExtension |

Extension créée dans le cadre de l’Annuaire Santé pour décrire un ensemble de personnes qui répondent à des critères leur permettant de bénéficier de la discipline décrite.

**Context of Use**

This extension may be used on the following element(s):

* Element ID HealthcareService

**Usage info**

**Usages:**

* Use this Extension: [AS HealthcareService Social Equipment Profile](StructureDefinition-as-healthcareservice-social-equipment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-patient-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-patient-type.csv), [Excel](StructureDefinition-as-ext-patient-type.xlsx), [Schematron](StructureDefinition-as-ext-patient-type.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-patient-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-patient-type",
  "version" : "1.1.0",
  "name" : "AsPatientTypeExtension",
  "title" : "AS Patient Type Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire un ensemble de personnes qui répondent à des critères leur permettant de  bénéficier de la discipline décrite.",
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
        "short" : "AS Patient Type Extension",
        "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire un ensemble de personnes qui répondent à des critères leur permettant de  bénéficier de la discipline décrite."
      },
      {
        "id" : "Extension.extension:authorizedAgeRange",
        "path" : "Extension.extension",
        "sliceName" : "authorizedAgeRange",
        "short" : "Age de la clientèle autorisée.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:authorizedAgeRange.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:authorizedAgeRange.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "authorizedAgeRange"
      },
      {
        "id" : "Extension.extension:authorizedAgeRange.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "Extension.extension:installedAgeRange",
        "path" : "Extension.extension",
        "sliceName" : "installedAgeRange",
        "short" : "Age de la clientèle installée.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:installedAgeRange.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:installedAgeRange.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "installedAgeRange"
      },
      {
        "id" : "Extension.extension:installedAgeRange.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-patient-type"
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
