# AS Person Birth Place Extension - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Person Birth Place Extension**

## Extension: AS Person Birth Place Extension 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-person-birth-place | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsPersonBirthPlaceExtension |

Extension créée dans le cadre de l’Annuaire Santé pour prise en compte du lieu de naissance du professionnel en tant que personne physique.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Person

**Usage info**

**Usages:**

* Use this Extension: [AS Person Profile](StructureDefinition-as-person.md)
* Examples for this Extension: [Person/pp16dr-person](Person-pp16dr-person.md) and [Person/pp19dr-person](Person-pp19dr-person.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-person-birth-place)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-person-birth-place.csv), [Excel](StructureDefinition-as-ext-person-birth-place.xlsx), [Schematron](StructureDefinition-as-ext-person-birth-place.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-person-birth-place",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-person-birth-place",
  "version" : "1.1.0",
  "name" : "AsPersonBirthPlaceExtension",
  "title" : "AS Person Birth Place Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du lieu de naissance du professionnel en tant que personne physique.",
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
        "short" : "AS Person Birth Place Extension",
        "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte du lieu de naissance du professionnel en tant que personne physique."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-person-birth-place"
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
        "id" : "Extension.value[x]:valueAddress",
        "path" : "Extension.value[x]",
        "sliceName" : "valueAddress",
        "short" : "Lieu de naissance de la personne (Synonyme MOS : lieuNaissance).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-address-extended"
            ]
          }
        ]
      }
    ]
  }
}

```
