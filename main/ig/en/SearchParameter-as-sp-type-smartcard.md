# as-sp-type-smartcard - Annuaire Santé v1.2.0-snapshot-2

## SearchParameter: as-sp-type-smartcard 

 
Paramètre de recherche pour récupérer les situations d'exercice d'un professionnel par type de carte CPx. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-type-smartcard",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-type-smartcard",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsTypeSmartCardSearchParameter",
  "status" : "active",
  "date" : "2026-06-26T10:36:05+00:00",
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
  "description" : "Paramètre de recherche pour récupérer les situations d'exercice d'un professionnel par type de carte CPx.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "type-smartcard",
  "base" : ["PractitionerRole"],
  "type" : "token",
  "expression" : "extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-smartcard').extension.where(url='type').value"
}

```
