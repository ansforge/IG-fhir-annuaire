# AS CodeSystem OrganizationTypes - Annuaire Santé v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AS CodeSystem OrganizationTypes**

## CodeSystem: AS CodeSystem OrganizationTypes 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-organization-types | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:AsCsOrganizationTypes |

 
CodeSystem définissant les types d’organisation 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AsVsOrganizationTypes](ValueSet-as-vs-organization-types.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "as-cs-organization-types",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-organization-types",
  "version" : "1.1.0",
  "name" : "AsCsOrganizationTypes",
  "title" : "AS CodeSystem OrganizationTypes",
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
  "description" : "CodeSystem définissant les types d'organisation",
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
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "organizationType",
      "display" : "Type d'organisation",
      "definition" : "Type d'organisation"
    },
    {
      "code" : "activiteINSEE",
      "display" : "Activité INSEE",
      "definition" : "Activité INSEE"
    },
    {
      "code" : "statutJuridiqueINSEE",
      "display" : "Statut Juridique INSEE",
      "definition" : "Statut Juridique INSEE"
    },
    {
      "code" : "sphParticipation",
      "display" : "sph Participation",
      "definition" : "Participation au service public hospitalier"
    },
    {
      "code" : "typeEtablissement",
      "display" : "Type d'établissement",
      "definition" : "Type d'établissement"
    },
    {
      "code" : "secteurActiviteRASS",
      "display" : "Secteur d'activité RASS",
      "definition" : "Secteur d'activité RASS"
    }
  ]
}

```
