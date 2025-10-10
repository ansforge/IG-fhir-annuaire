# AS CodeableConceptTimed Datatype Profile - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS CodeableConceptTimed Datatype Profile**

## Data Type Profile: AS CodeableConceptTimed Datatype Profile 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-codeableconcept-timed | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsCodeableConceptTimedProfile |

 
Datatype profile créé à partir CodeableConcept dans le cadre de l’Annuaire Santé pour ajouter une extension Period au type CodeableConcept. 

**Usages:**

* Use this DataType Profile: [AS Practitioner Profile](StructureDefinition-as-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-codeableconcept-timed)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-codeableconcept-timed.csv), [Excel](StructureDefinition-as-codeableconcept-timed.xlsx), [Schematron](StructureDefinition-as-codeableconcept-timed.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-codeableconcept-timed",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-codeableconcept-timed",
  "version" : "1.1.0",
  "name" : "AsCodeableConceptTimedProfile",
  "title" : "AS CodeableConceptTimed Datatype Profile",
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
  "description" : "Datatype profile créé à partir CodeableConcept dans le cadre de l'Annuaire Santé pour ajouter une extension Period au type CodeableConcept.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "orim",
      "uri" : "http://hl7.org/orim",
      "name" : "Ontological RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "CodeableConcept",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CodeableConcept",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CodeableConcept",
        "path" : "CodeableConcept"
      },
      {
        "id" : "CodeableConcept.extension:as-codeableconcept-timed-metadata",
        "path" : "CodeableConcept.extension",
        "sliceName" : "as-codeableconcept-timed-metadata",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-codeableconcept-timed-metadata"
            ]
          }
        ]
      }
    ]
  }
}

```
