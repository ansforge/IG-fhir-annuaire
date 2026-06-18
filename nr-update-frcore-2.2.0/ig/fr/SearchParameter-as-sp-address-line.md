# as-sp-address-line - Annuaire Santé v1.2.0-snapshot-1

## SearchParameter: as-sp-address-line 

 
Recherche sur la version textuelle de l'adresse 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-address-line",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-address-line",
  "version" : "1.2.0-snapshot-1",
  "name" : "AsAddressLineSearchParameter",
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
  "description" : "Recherche sur la version textuelle de l'adresse",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "address-line",
  "base" : ["Organization"],
  "type" : "string",
  "expression" : "address.line"
}

```
