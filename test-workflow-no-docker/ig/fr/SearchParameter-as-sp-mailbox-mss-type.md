# as-sp-mailbox-mss-type - Annuaire Santé v1.2.0-snapshot-2

## SearchParameter: as-sp-mailbox-mss-type 

 
Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d'exercice par type de BAL MSSanté. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-mailbox-mss-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-mailbox-mss-type",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsMailboxMssTypeSearchParameter",
  "status" : "active",
  "date" : "2026-06-25T12:00:53+00:00",
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
  "description" : "Paramètre de recherche pour récupérer une organisation, un praticien ou une situation d'exercice par type de BAL MSSanté.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "mailbox-mss-type",
  "base" : ["Organization", "Practitioner", "PractitionerRole"],
  "type" : "token",
  "expression" : "telecom.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-mailbox-mss-metadata').extension.where(url='type').value"
}

```
