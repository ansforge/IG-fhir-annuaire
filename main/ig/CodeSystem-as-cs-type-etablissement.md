# AS CodeSystem Type Etablissement - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS CodeSystem Type Etablissement**

## CodeSystem: AS CodeSystem Type Etablissement 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-type-etablissement | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsCsTypeEtablissement |

 
CodeSystem définissant les types d’établissement. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AsVsTypeEtablissement](ValueSet-as-vs-type-etablissement.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "as-cs-type-etablissement",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-type-etablissement",
  "version" : "1.1.0",
  "name" : "AsCsTypeEtablissement",
  "title" : "AS CodeSystem Type Etablissement",
  "status" : "active",
  "experimental" : false,
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
  "description" : "CodeSystem définissant les types d'établissement.",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "P",
      "display" : "Principal",
      "definition" : "Etablissement principal"
    },
    {
      "code" : "S",
      "display" : "Secondaire",
      "definition" : "Etablissement secondaire"
    }
  ]
}

```
