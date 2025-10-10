# AS Practitioner Authorization Extension - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Practitioner Authorization Extension**

## Extension: AS Practitioner Authorization Extension 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitioner-authorization | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsPractitionerAuthorizationExtension |

Extension créée dans le cadre de l’Annuaire Santé pour prise en compte de l’autorisation d’exercice du professionnel (AutorisationExercice).

**Context of Use**

This extension may be used on the following element(s):

* Element ID Practitioner

**Usage info**

**Usages:**

* Use this Extension: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-practitioner-authorization)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-practitioner-authorization.csv), [Excel](StructureDefinition-as-ext-practitioner-authorization.xlsx), [Schematron](StructureDefinition-as-ext-practitioner-authorization.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-practitioner-authorization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitioner-authorization",
  "version" : "1.1.0",
  "name" : "AsPractitionerAuthorizationExtension",
  "title" : "AS Practitioner Authorization Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'autorisation d'exercice du professionnel (AutorisationExercice).",
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
        "short" : "AutorisationExercice : Il s'agit d'une autorisation délivrée par le Ministère de la Santé ou par l'Ordre au professionnel pour accès à l'exercice de la profession.",
        "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour prise en compte de l'autorisation d'exercice du professionnel (AutorisationExercice)."
      },
      {
        "id" : "Extension.extension:type",
        "path" : "Extension.extension",
        "sliceName" : "type",
        "short" : "Type d’autorisation (ex. Autorisation ministérielle de plein exercice, etc.).",
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
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J75-TypeAutorisation-RASS/FHIR/JDV-J75-TypeAutorisation-RASS"
        }
      },
      {
        "id" : "Extension.extension:period",
        "path" : "Extension.extension",
        "sliceName" : "period",
        "short" : "Période de validité de l'autorisation d'exercice.",
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
        "short" : "dateDebutAutorisation : Date à partir de laquelle l’autorisation s’applique."
      },
      {
        "id" : "Extension.extension:period.value[x].end",
        "path" : "Extension.extension.value[x].end",
        "short" : "dateFinAutorisation : Date de fin de validité de l'autorisation."
      },
      {
        "id" : "Extension.extension:field",
        "path" : "Extension.extension",
        "sliceName" : "field",
        "short" : "disciplineAutorisee : Discipline à laquelle l'autorisation d'exercice est restreinte, le cas échéant.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:field.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:field.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "field"
      },
      {
        "id" : "Extension.extension:field.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J76-DisciplineAutorisation-RASS/FHIR/JDV-J76-DisciplineAutorisation-RASS"
        }
      },
      {
        "id" : "Extension.extension:profession",
        "path" : "Extension.extension",
        "sliceName" : "profession",
        "short" : "profession : Profession pour laquelle l'autorisation est délivrée.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:profession.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:profession.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "profession"
      },
      {
        "id" : "Extension.extension:profession.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J106-EnsembleProfession-RASS/FHIR/JDV-J106-EnsembleProfession-RASS"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitioner-authorization"
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
