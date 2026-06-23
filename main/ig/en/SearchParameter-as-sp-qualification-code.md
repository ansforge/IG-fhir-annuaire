# as-sp-qualification-code - Annuaire Santé v1.2.0-snapshot-2

## SearchParameter: as-sp-qualification-code 

 
Paramètre de recherche pour rechercher par code de qualification. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-qualification-code",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-qualification-code",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsQualificationCodeSearchParameter",
  "status" : "active",
  "date" : "2026-06-23T09:20:47+00:00",
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
  "description" : "Paramètre de recherche pour rechercher par code de qualification.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "qualification-code",
  "base" : ["Practitioner"],
  "type" : "token",
  "expression" : "qualification.code"
}

```
