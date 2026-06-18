# as-sp-organization-period - Annuaire Santé v1.2.0-snapshot-2

## SearchParameter: as-sp-organization-period 

 
Paramètre de recherche pour récupérer une organisation par période d'activité 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-organization-period",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-organization-period",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsOrganiationPeriodSearchParameter",
  "status" : "active",
  "date" : "2026-06-18T13:08:38+00:00",
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
  "description" : "Paramètre de recherche pour récupérer une organisation par période d'activité",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "period",
  "base" : ["Organization"],
  "type" : "date",
  "expression" : "address.extension.where(url='http://hl7.org/fhir/StructureDefinition/organization-period').value"
}

```
