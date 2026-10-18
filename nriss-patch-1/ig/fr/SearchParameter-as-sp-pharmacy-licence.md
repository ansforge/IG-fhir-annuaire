# as-sp-pharmacy-licence - Annuaire Santé v1.2.0-snapshot-2

## SearchParameter: as-sp-pharmacy-licence 

 
Paramètre de recherche pour récupérer une pharmacie par son numéro de licence. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-pharmacy-licence",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-pharmacy-licence",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsPharmacyLicenceSearchParameter",
  "status" : "active",
  "date" : "2026-06-30T07:49:20+00:00",
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
  "description" : "Paramètre de recherche pour récupérer une pharmacie par son numéro de licence.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "pharmacy-licence",
  "base" : ["Organization"],
  "type" : "string",
  "expression" : "extension.where(url = 'https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-organization-pharmacy-licence').value"
}

```
