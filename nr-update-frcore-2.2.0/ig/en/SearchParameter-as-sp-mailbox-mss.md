# as-sp-mailbox-mss - Annuaire Santé v1.2.0-snapshot-1

## SearchParameter: as-sp-mailbox-mss 

 
Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d'exercice par adresse MSSanté. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-mailbox-mss",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-mailbox-mss",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsMailboxMssSearchParameter",
  "status" : "active",
  "date" : "2026-06-18T11:49:33+00:00",
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
  "description" : "Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d'exercice par adresse MSSanté.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "mailbox-mss",
  "base" : ["Organization", "Practitioner", "PractitionerRole"],
  "type" : "string",
  "expression" : "telecom.value",
  "modifier" : ["contains", "exact"]
}

```
