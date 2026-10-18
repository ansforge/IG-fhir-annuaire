# as-sp-insee-code - Annuaire Santé v1.2.0-snapshot-2

## SearchParameter: as-sp-insee-code 

 
Paramètre de recherche pour récupérer une organisation, par code Insee. Cf http://www.sirius-upvm.net/doc/usuels/codes_postaux.html 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-insee-code",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-insee-code",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsInseeCodeSearchParameter",
  "status" : "active",
  "date" : "2026-06-18T13:31:38+00:00",
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
  "description" : "Paramètre de recherche pour récupérer une organisation, par code Insee. Cf http://www.sirius-upvm.net/doc/usuels/codes_postaux.html",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "address-insee",
  "base" : ["Organization"],
  "type" : "string",
  "expression" : "address.extension.where(url='https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code').value"
}

```
