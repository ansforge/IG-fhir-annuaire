# AS CodeSystem OrganizationTypes - Annuaire Santé v1.2.0-snapshot-2

## CodeSystem: AS CodeSystem OrganizationTypes 

 
CodeSystem définissant les types d'organisation 

This Code system is referenced in the definition of the following value sets:

* [AsVsOrganizationTypes](ValueSet-as-vs-organization-types.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "as-cs-organization-types",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/CodeSystem/as-cs-organization-types",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsCsOrganizationTypes",
  "title" : "AS CodeSystem OrganizationTypes",
  "status" : "draft",
  "date" : "2026-06-19T13:53:04+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    },
    {
      "system" : "email",
      "value" : "monserviceclient.annuaire@esante.gouv.fr"
    }]
  }],
  "description" : "CodeSystem définissant les types d'organisation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "organizationType",
    "display" : "Type d'organisation",
    "definition" : "Type d'organisation"
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
  }]
}

```
