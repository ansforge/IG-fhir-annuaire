# as-sp-data-registration-authority - Annuaire Santé v1.2.0-snapshot-2

## SearchParameter: as-sp-data-registration-authority 

 
Paramètre de recherche pour récupérer une ressource par autorité d'enregistrement des données. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-data-registration-authority",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-data-registration-authority",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsDataRegistrationAuthoritySearchParameter",
  "status" : "active",
  "date" : "2026-06-26T10:31:58+00:00",
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
  "description" : "Paramètre de recherche pour récupérer une ressource par autorité d'enregistrement des données.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "data-registration-authority",
  "base" : ["Organization",
  "Practitioner",
  "PractitionerRole",
  "Device",
  "HealthcareService"],
  "type" : "token",
  "expression" : "extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-data-trace').extension.where(url='autorite-enregistrement').value"
}

```
