# AS Education Level Extension - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS Education Level Extension**

## Extension: AS Education Level Extension 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-education-level | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsEducationLevelExtension |

Extension créée dans le cadre de l’Annuaire Santé pour décrire le niveau de formation acquis d’un étudiant.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Practitioner.qualification

**Usage info**

**Usages:**

* Use this Extension: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-education-level)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-education-level.csv), [Excel](StructureDefinition-as-ext-education-level.xlsx), [Schematron](StructureDefinition-as-ext-education-level.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-education-level",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-education-level",
  "version" : "1.1.0",
  "name" : "AsEducationLevelExtension",
  "title" : "AS Education Level Extension",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire le niveau de formation acquis d'un étudiant.",
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
      "expression" : "Practitioner.qualification"
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
        "short" : "niveauFormation",
        "definition" : "Le niveau de formation."
      },
      {
        "id" : "Extension.extension:academicDegree",
        "path" : "Extension.extension",
        "sliceName" : "academicDegree",
        "short" : "[Donnée restreinte] : Nature du cycle de formation (natureCycleFormation).",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:academicDegree.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:academicDegree.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "academicDegree"
      },
      {
        "id" : "Extension.extension:academicDegree.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J86-NatCycleForm-RASS/FHIR/JDV-J86-NatCycleForm-RASS"
        }
      },
      {
        "id" : "Extension.extension:achievedLevel",
        "path" : "Extension.extension",
        "sliceName" : "achievedLevel",
        "short" : "[Donnée restreinte] : Niveau de formation acquis dans le cycle de formation du professionnel (niveauFormationAcquis).",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:achievedLevel.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:achievedLevel.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "achievedLevel"
      },
      {
        "id" : "Extension.extension:achievedLevel.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J87-NiveauFormAcquis-RASS/FHIR/JDV-J87-NiveauFormAcquis-RASS"
        }
      },
      {
        "id" : "Extension.extension:academicYear",
        "path" : "Extension.extension",
        "sliceName" : "academicYear",
        "short" : "[Donnée restreinte] : Année universitaire du professionnel (anneeUniversitaire).\nExemple : 2015-2016.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:academicYear.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:academicYear.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "academicYear"
      },
      {
        "id" : "Extension.extension:academicYear.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J88-AnneeUniversitaire-RASS/FHIR/JDV-J88-AnneeUniversitaire-RASS"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-education-level"
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
