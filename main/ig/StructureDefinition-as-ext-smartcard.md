# AS Smart Card Extension - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Smart Card Extension**

## Extension: AS Smart Card Extension 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-smartcard | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsSmartCardExtension |

Extension créée dans le cadre de l’Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Practitioner

**Usage info**

**Usages:**

* Use this Extension: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-smartcard)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-smartcard.csv), [Excel](StructureDefinition-as-ext-smartcard.xlsx), [Schematron](StructureDefinition-as-ext-smartcard.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-smartcard",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-smartcard",
  "version" : "1.1.0",
  "name" : "AsSmartCardExtension",
  "title" : "AS Smart Card Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques.",
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
      "expression" : "Practitioner"
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
        "short" : "CarteProfessionnel : Données descriptives du moyen d’identification des personnes physiques via une carte de professionnel.\r\n La carte est rattachée à l’exercice d’une profession donnée et non au professionnel lui-même, un professionnel exerçant simultanément deux professions a deux cartes.",
        "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire les informations de la carte CPx utilisée comme moyen d’identification des personnes physiques."
      },
      {
        "id" : "Extension.extension:type",
        "path" : "Extension.extension",
        "sliceName" : "type",
        "short" : "typeCarte : Type de carte de professionnel (CPx)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:type.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:type.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "type"
      },
      {
        "id" : "Extension.extension:type.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J128-TypeCarte-RASS/FHIR/JDV-J128-TypeCarte-RASS"
        }
      },
      {
        "id" : "Extension.extension:number",
        "path" : "Extension.extension",
        "sliceName" : "number",
        "short" : "numeroCarte : Numéro de carte du professionnel.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:number.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:number.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "number"
      },
      {
        "id" : "Extension.extension:number.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Numéro de carte du professionnel.",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:period",
        "path" : "Extension.extension",
        "sliceName" : "period",
        "short" : "Période de validité de la carte.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:period.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:period.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "period"
      },
      {
        "id" : "Extension.extension:period.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Extension.extension:period.value[x].start",
        "path" : "Extension.extension.value[x].start",
        "short" : "dateDebutValidite : Date de début de validité de la carte"
      },
      {
        "id" : "Extension.extension:period.value[x].end",
        "path" : "Extension.extension.value[x].end",
        "short" : "dateFinValidite : Date de fin de validité de la carte"
      },
      {
        "id" : "Extension.extension:oppositionDate",
        "path" : "Extension.extension",
        "sliceName" : "oppositionDate",
        "short" : "dateOpposition : Date d'opposition de la carte.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:oppositionDate.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:oppositionDate.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "oppositionDate"
      },
      {
        "id" : "Extension.extension:oppositionDate.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-smartcard"
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
