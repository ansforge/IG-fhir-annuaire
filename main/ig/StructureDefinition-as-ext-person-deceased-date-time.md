# AS Person Deceased Date Time Extension - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Person Deceased Date Time Extension**

## Extension: AS Person Deceased Date Time Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/5.0/StructureDefinition/extension-Person.deceasedDateTime | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsPersonDeceasedDateTimeExtension |

Extension créée dans le cadre de l’Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the Person if applicable).

**Context of Use**

This extension may be used on the following element(s):

* Element ID Person

**Usage info**

**Usages:**

* Use this Extension: [AS Person Profile](StructureDefinition-as-person.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-person-deceased-date-time)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-person-deceased-date-time.csv), [Excel](StructureDefinition-as-ext-person-deceased-date-time.xlsx), [Schematron](StructureDefinition-as-ext-person-deceased-date-time.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-person-deceased-date-time",
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Person.deceasedDateTime",
  "version" : "1.1.0",
  "name" : "AsPersonDeceasedDateTimeExtension",
  "title" : "AS Person Deceased Date Time Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the Person if applicable).",
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
      "expression" : "Person"
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
        "short" : "AS Person Deceased Date Time Extension",
        "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de la date de décès du professionnel (Date of death of the Person if applicable)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Person.deceasedDateTime"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Extension.value[x]:valueDateTime",
        "path" : "Extension.value[x]",
        "sliceName" : "valueDateTime",
        "short" : "Date de décès de la personne (dateDeces).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
