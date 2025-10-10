# AS PractitionerRole Has CAS - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS PractitionerRole Has CAS**

## Extension: AS PractitionerRole Has CAS 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-hascas | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsPractitionerRoleHasCas |

Extension créée dans le cadre de l’Annuaire Santé pour décrire le contrat d’accès aux soins (CAS), remplacée récemment par l’option pratique tarifaire maîtrisée (OPTAM).

**Context of Use**

This extension may be used on the following element(s):

* Element ID PractitionerRole

**Usage info**

**Usages:**

* Use this Extension: [AS PractitionerRole Profile](StructureDefinition-as-practitionerrole.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.annuaire|current/StructureDefinition/as-ext-practitionerrole-hascas)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-as-ext-practitionerrole-hascas.csv), [Excel](StructureDefinition-as-ext-practitionerrole-hascas.xlsx), [Schematron](StructureDefinition-as-ext-practitionerrole-hascas.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-ext-practitionerrole-hascas",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-hascas",
  "version" : "1.1.0",
  "name" : "AsPractitionerRoleHasCas",
  "title" : "AS PractitionerRole Has CAS",
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
  "description" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire le contrat d'accès aux soins (CAS), remplacée récemment par l'option pratique tarifaire maîtrisée (OPTAM).",
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
      "expression" : "PractitionerRole"
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
        "short" : "optionContratAccesSoins, optionPratiqueTarifaireMaîtrisée : OPTAM est un dispositif proposé par l’Assurance Maladie aux médecins conventionnés, ayant pour objectif principal de faciliter l’accès aux soins.",
        "definition" : "Extension créée dans le cadre de l'Annuaire Santé pour décrire le contrat d'accès aux soins (CAS), remplacée récemment par l'option pratique tarifaire maîtrisée (OPTAM)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-hascas"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
