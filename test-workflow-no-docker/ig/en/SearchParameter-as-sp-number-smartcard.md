# as-sp-number-smartcard - Annuaire Santé v1.2.0-snapshot-2

## SearchParameter: as-sp-number-smartcard 

 
Paramètre de recherche pour récupérer les situations d'exercice d'un professionnel par son numéro de carte CPx. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "as-sp-number-smartcard",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/SearchParameter/as-sp-number-smartcard",
  "version" : "1.2.0-snapshot-2",
  "name" : "AsNumberSmartCardSearchParameter",
  "status" : "active",
  "date" : "2026-06-25T11:33:59+00:00",
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
  "description" : "Paramètre de recherche pour récupérer les situations d'exercice d'un professionnel par son numéro de carte CPx.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "number-smartcard",
  "base" : ["PractitionerRole"],
  "type" : "string",
  "expression" : "extension.where(url='https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-ext-practitionerrole-smartcard').extension.where(url='number').value"
}

```
