# AS Organization Authorization Deadline Extension - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Organization Authorization Deadline Extension**

## Extension: AS Organization Authorization Deadline Extension 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-authorization-deadline | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsOrganizationAuthorizationDeadlineExtension |

Extension créée dans le cadre de l’Annuaire Santé pour prise en compte de la caducité de l’autorisation sanitaire.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Organization

**Usage info**

**Usages:**

* Use this Extension: [AS Organization Profile](StructureDefinition-as-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-organization-authorization-deadline)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-organization-authorization-deadline.csv), [Excel](StructureDefinition-as-ext-organization-authorization-deadline.xlsx), [Schematron](StructureDefinition-as-ext-organization-authorization-deadline.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-organization-authorization-deadline",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-authorization-deadline",
  "version" : "1.1.0",
  "name" : "AsOrganizationAuthorizationDeadlineExtension",
  "title" : "AS Organization Authorization Deadline Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la caducité de l'autorisation sanitaire.",
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
      "expression" : "Organization"
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
        "short" : "AS Organization Authorization Deadline Extension",
        "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la caducité de l'autorisation sanitaire."
      },
      {
        "id" : "Extension.extension:endDate",
        "path" : "Extension.extension",
        "sliceName" : "endDate",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:endDate.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:endDate.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "endDate"
      },
      {
        "id" : "Extension.extension:endDate.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:indicator",
        "path" : "Extension.extension",
        "sliceName" : "indicator",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:indicator.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:indicator.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "indicator"
      },
      {
        "id" : "Extension.extension:indicator.value[x]",
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
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-authorization-deadline"
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
