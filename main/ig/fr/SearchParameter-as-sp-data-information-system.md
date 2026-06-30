# as-sp-data-information-system - Annuaire Santé v1.2.0-snapshot-2

## SearchParameter: as-sp-data-information-system 

 
Paramètre de recherche pour récupérer une ressource par système d'information de provenance des données. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-data-information-system",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-information-system",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDataInformationSystemSearchParameter",
  "status" : "active",
  "date" : "2026-06-30T07:59:11+00:00",
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
  "description" : "Paramètre de recherche pour récupérer une ressource par système d'information de provenance des données.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "data-information-system",
  "base" : ["Organization",
  "Practitioner",
  "PractitionerRole",
  "Device",
  "HealthcareService"],
  "type" : "token",
  "expression" : "extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace').extension.where(url='systeme-information').value"
}

```
